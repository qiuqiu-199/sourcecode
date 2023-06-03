# -*- coding: utf-8 -*-
import subprocess
import time
import os, sys
import shutil
import commands
import threading
from utils import *

lock = threading.RLock()


class ActivityLauncher:

    def __init__(self, testcase_dir, result_dir):  # testcase_dir = Result_testGen\
        self.testcase_dir = testcase_dir  # result_dir = Result_luanch\
        self.result_dir = result_dir

    def launchAct(self):
        # tcFolder = Result_testGen\testcases\  内存放fax生成的测试用例
        tcFolder = self.testcase_dir + "testcases" + os.sep
        for fn in os.listdir(tcFolder):  # 从tcFolder目录中
            # 如果folder = Result_testGen\testcases\fn 是个目录
            folder = os.path.join(tcFolder, fn)
            if os.path.isdir(folder):
                pkgFile = "F:\\ThesisReproduction\\qiu\\summaryInfo\\" + fn + "\\declaredActivity.txt"
                f = open(pkgFile, 'r')
                value = f.readlines()
                pkgName = value[1].replace("pkg_name: ", "").replace("\n", "")
                print pkgName
                # qiu：对pkgName对应的apk进行启动测试
                self.testAPK(folder, pkgName, fn)

    def testAPK(self, fileFolder, package, fn):
        # fileFolder = Result_testGen\testcases\fn; package = pkgName; fn = fn
        if not os.path.exists(fileFolder):
            return
        appFile = fileFolder + os.sep + "apkTestCases" + os.sep + "test.apk"
        print "appFile = " + appFile
        # appFile = Result_testGen\testcases\fn\apkTestCases\test.apk
        iccFile = fileFolder + os.sep + "testCase.iccmsg"
        print "iccFile = " + iccFile
        # iccFile = Result_testGen\testcases\fn\testCase.iccmsg
        logDir = self.result_dir + "Logs" + os.sep + fn + os.sep + "turn_0" + os.sep
        print "logDir = " + logDir
        # logDir = Result_luanch\Logs\fn\turn_0\
        if not os.path.exists(logDir):
            os.makedirs(logDir)

        # 使用adb命令查看所有package
        result = os.popen("adb shell pm list packages")
        f = result.readlines()

        # 如果没有安装生成的test.apk则先安装
        if "package:qiu." + package + "\n" not in f:
            print package, "not install"
            executeCmd("adb install " + appFile)
            time.sleep(5)
            executeCmd("adb shell input keyevent 4")  # 相当于back键
            time.sleep(1)
            executeCmd("adb shell input keyevent 4")

        # 获取ICCMsg的icc消息，下面遍历用
        f = open(iccFile)
        lines = f.readlines()
        f.close()

        id = 0
        for line in lines:  # line是一条testcase.iccmsg的icc,举例：6	com.fsck.k9.activity.setup.AccountSetupIncoming	android.intent.action.EDIT;;null;;null;;null;;String->account->!@#$%^ds:+_,
            id += 1
            logcatInfo = logDir + "/" + str(id) + "_" + line.split("\t")[1] + ".logcat"
            # Result_launch\Logs\K9Mail\turn_0\/1_com.fsck.k9.activity.ChooseIdentity.logcat
            cmdInfo = logDir + "/" + str(id) + "_" + line.split("\t")[1] + ".cmdinfo"
            # Result_launch\Logs\K9Mail\turn_0\/1_com.fsck.k9.activity.ChooseIdentity.cmdinfo
            if not os.path.exists(logcatInfo):
                try:
                    # 清除原有日志
                    executeCmd("adb logcat -c")
                    # 启动一个activity，并追加启动信息到cmdInfo中
                    # am 全称为Activity Manager ，可以使用am去模拟各种系统的行为
                    # -n 这个选项属于<intent>内容，不是start的选项，指定完整的要启动的component名
                    executeCmd("adb shell am start -n qiu." + package + "/.Activity_" + str(id) + " >> " + cmdInfo, 5)
                    # 例子：execute  adb shell am start -n fax.com.fsck.k9/.Activity_1 >> Result_launch\Logs\K9Mail\turn_0\/1_com.fsck.k9.activity.ChooseIdentity.cmdinfo
                    # takePicture(fn, 1,logDir)
                    time.sleep(1)
                    # 调用self.compareActivity(),获取当前activity信息（所属apk，所属包，activity名，luancher，luancher是否以包名开头），并追加到compareActivity.txt文件中
                    self.compareActivity(line.split("\t")[1], fn + "\t" + str(id), package)
                    time.sleep(1)
                    # executeCmd("adb shell monkey -p "+package+" -f /sdcard/monkey.script  10")
                    executeCmd("adb logcat -s M_InsDal:D -s AndroidRuntime:E >> " + logcatInfo, 10)
                    executeCmd("adb shell am force-stop " + package)
                    # executeCmd("adb shell pm clear " +package)
                    executeCmd("adb shell am force-stop qiu." + package)
                    # executeCmd("adb shell pm clear fax." +package)
                    executeCmd("adb kill-server ")
                    executeCmd("adb start-server")
                    time.sleep(1)
                except TimeoutError, e:
                    print repr(e)

    def compareActivity(self, testActName, fn, package):
        result = os.popen('adb shell dumpsys activity | findstr \"mResume\" ')
        # 获取当前activity
        res = result.read()
        str = ""
        # 从当前activity中获取信息
        for line in res.splitlines():  # line的例子：mResumedActivity: ActivityRecord{1701ea0 u0 com.fsck.k9/.activity.MessageList t564}
            current = line.split(" ")[7].split("/")[
                1]  # line.split()[7] = ['', '', '', '', 'mResumedActivity:', 'ActivityRecord{2c67be9', 'u0', 'com.fsck.k9/.activity.Accounts', 't564}']
            if current.startswith("."):
                current = line.split(" ")[7].split("/")[0] + current
            str += fn + "\t" + package + "\t" + testActName + "\t" + current + "\t"
            if current.startswith(package) or current == testActName:
                str += "yes\n"
            else:
                str += "no\n"
        if len(res) == 0:
            str = fn + "\t" + package + "\t" + testActName + "\t" + "no return value" + "\n"
        print "!!!" + str
        # !!!K9Mail       3       com.fsck.k9     com.fsck.k9.activity.ChooseIdentity     com.android.launcher3.Launcher  no
        # !!!K9Mail       35      com.fsck.k9     com.fsck.k9.activity.MessageList        com.fsck.k9.activity.Accounts   yes
        # fn传过来的时候加上了id，所以此时fn = fn + str(id)
        # 将获取到的信息写入文件compareActivity.txt中              lock是线程锁
        lock.acquire()
        fca = open(self.result_dir + "compareActivity.txt", "a+")
        fca.write(str)
        fca.close()
        lock.release()

    def getEAs(self, fn):
        eaSet = set()
        eaFile = "F:\\ThesisReproduction\\qiu\\summaryInfo\\" + fn + "\\EAList.txt"
        fr = open(eaFile, "r")
        for line in fr.readlines():
            eaSet.add(line.strip())
        fr.readline()
        return eaSet

    def takePicture(self, name, id, logDir):
        id = str(id)
        executeCmd("adb shell screencap -p /sdcard/screen" + id + ".png", 10)
        executeCmd("adb pull /sdcard/screen" + id + ".png " + logDir + "/" + name + "_" + id + ".png")
        time.sleep(1)

    def getLaunchedAct(self):
        f = open(self.result_dir + "compareActivity.txt")
        lines = f.readlines()
        f.close()

        fw1 = open(self.result_dir + "isLaunched.txt", "w")
        fw2 = open(self.result_dir + "successACT.txt", "w")
        history = set()
        for line in lines:
            if "\t" in line:
                ss = line.split("\t")
                if len(ss) == 6:  # TODO fax这没有判断
                    res = ss[5].strip()
                    if res == "yes":
                        eaSet = self.getEAs(ss[0])
                        if ss[3] in eaSet:
                            fw1.write(ss[0] + "\t" + ss[1] + "\t" + ss[2] + "\t" + ss[3] + "\tEA\n")
                            if ss[3] not in history:
                                fw2.write(ss[0] + "\t" + ss[2] + "\t" + ss[3] + "\tEA\n")
                        else:
                            fw1.write(ss[0] + "\t" + ss[1] + "\t" + ss[2] + "\t" + ss[3] + "\tIA\n")
                            if ss[3] not in history:
                                fw2.write(ss[0] + "\t" + ss[2] + "\t" + ss[3] + "\tIA\n")
                        history.add(ss[3])

        fw1.close()
        fw2.close()


# main function
if __name__ == '__main__':
    testcase_dir = sys.argv[1] + os.sep
    launch_dir = sys.argv[2] + os.sep
    launcher = ActivityLauncher(testcase_dir, launch_dir)
    launcher.launchAct()
    launcher.getLaunchedAct()
