# coding=utf-8
import os
import re
import time

import qiuLaunchActs
from utils import executeCmd


def unistallScript():
    result = os.popen("adb shell pm list packages")
    installed_pkgs = result.readlines()
    for installed_pkg in installed_pkgs:
        # 卸载全部
        # if installed_pkg.replace("package:","") in pkgs \
        #         or "qiu" in installed_pkg \
        #         or "com.csipsimple" in installed_pkg.replace("package:", ""):
        #     executeCmd("adb uninstall " + installed_pkg.replace("package:", "").split("\n")[0])
        #     time.sleep(3)
        #     print installed_pkg.replace("package:", "") + "已卸载！"

        # 卸载fax的test.apk
        # if "fax" in installed_pkg:
        #     executeCmd("adb uninstall " + installed_pkg.replace("package:", "").split("\n")[0])
        # 卸载qiu的test.apk
        if "qiu" in installed_pkg:
            executeCmd("adb uninstall " + installed_pkg.replace("package:", "").split("\n")[0])


def compareActivity(testActName, fn, package):
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
    qiuLaunchActs.lock.acquire()
    fca = open("Result_launch_nrv\\compareActivity.txt", "a+")
    fca.write(str)
    fca.close()
    qiuLaunchActs.lock.release()


def testAgainForNRV():
    f = open("F:\ThesisReproduction\qiu\Result_launch\compareActivity.txt")
    # count = 0 # 统计noreturnvalue的条数
    lines = f.readlines()

    # 对结果是noreturnvalue的测试用例再测试一遍
    for line in lines:
        ss = line.split("\t")
        apk_name = ss[0]
        tc_num = ss[1]
        pkg_name = ss[2]
        act_name = ss[3]
        res = ss[-1]
        log_dir = "Result_launch_nrv" + os.sep + "Logs" + os.sep + apk_name + os.sep + "turn_0" + os.sep
        if not os.path.exists(log_dir):
            os.makedirs(log_dir)
        if "no return value" in res:
            # f1.write(line)  # 所有noreturnvalue的写入文件里
            logcat_info = log_dir + tc_num + "_" + act_name + ".logcat"
            cmd_info = log_dir + tc_num + "_" + act_name + ".cmdinfo"
            executeCmd("adb logcat -c")
            executeCmd("adb shell am start -n qiu." + pkg_name + "/.Activity_" + tc_num + " >> " + cmd_info, 5)
            time.sleep(1.25)
            compareActivity(act_name, apk_name + "\t" + tc_num, pkg_name)
            time.sleep(1)
            executeCmd("adb logcat -s M_InsDal:D -s AndroidRuntime:E >> " + logcat_info, 10)
            executeCmd("adb shell am force-stop " + pkg_name)
            # executeCmd("adb shell pm clear " +package)
            executeCmd("adb shell am force-stop qiu." + pkg_name)
            # executeCmd("adb shell pm clear fax." +package)
            executeCmd("adb kill-server ")
            executeCmd("adb start-server")
            time.sleep(1)


# TODO 在使用生成测试用例的工具之前必须调用次脚本删除EAList.txt文件
def del_ealist():
    path = "F:\ThesisReproduction\qiu\summaryInfo"
    list = os.listdir(path)
    list.remove("outInfo.txt")
    for apk_name in list:
        ealist_path = os.path.join(path, apk_name + os.sep + "EAList.txt")
        os.remove(ealist_path)
        print apk_name + "的EAList.txt文件删除成功！"


def getActs(fn):
    actSet = set()
    actFile = "F:\ThesisReproduction\qiu\summaryInfo" + os.sep + fn + os.sep + "declaredActivity.txt"
    fr = open(actFile, "r")
    for line in fr.readlines():
        if ("act_name" in line):
            actSet.add(line.replace("act_name: ", "").strip())
    fr.close()
    return actSet


def exclude_1():
    f = open("F:\ThesisReproduction\qiu\Result_launch\compareActivity.txt")
    f1 = open("cmd.txt", "a+")

    count_all = 0
    count_yes = 0

    lines = f.readlines()
    act_dict = dict()
    for line in lines:
        ss = line.split("\t")
        apk_name = ss[0]
        dec_act_set = getActs(apk_name)
        act_name = ss[3]
        res = ss[-1]
        if act_name not in dec_act_set:
            if act_name not in act_dict.keys():
                act_dict[act_name] = 1
            else:
                act_dict[act_name] += 1
            count_all += 1
            if "yes" in res:
                count_yes += 1
            f1.write(line)

    print "manifest里声明但不在declaredActivity里的Activity有：" + str(len(act_dict.keys()))
    print "为这些Activity生成的测试用例有"+ str(count_all)
    print "其中结果为yes的有：" + str(count_yes)


def count_bug_from_txt():
    f = open("F:\ThesisReproduction\qiu\Result_launch\Crashes\_summary.txt")
    count = 0
    lines = f.readlines()
    out = open("1qiuStastics\\bug_count.txt","w")
    for line in lines:
        if count < 40:
            ss = line.split("\t")
            out.write(ss[0] + "\t" + ss[1] + "\t" + ss[3])
            out.write("\n")
        count += 1
    out.close()
    pass


def sign_apk(apk_dir):
    RESIGN = "java -jar lib/signapk.jar lib/platform.x509.pem lib/platform.pk8 "
    f = os.listdir(apk_dir)
    for apk_file in f:
        pattern = ".*\\.apk"
        result = re.findall(pattern, apk_file)  # 识别以.apk结尾的文件名字，返回列表形式
        if len(result) != 0:
            unsigned_apk = apk_dir + os.sep + apk_file
            signed_apk = apk_dir + os.sep + "signed_apk" + os.sep + apk_file[:-4] + "_ins_signed.apk"
            resign = RESIGN + unsigned_apk + " " + signed_apk
            print resign
            os.system(resign)
            print "-----" + apk_file + "插桩后的apk签名完毕-----"


def install_apk(apk_dir):
    f = os.listdir(apk_dir)
    for apk_file in f:
        pattern = ".*\\.apk"
        result = re.findall(pattern, apk_file)  # 识别以.apk结尾的文件名字，返回列表形式
        if len(result) != 0:
            os.system("adb install -g " + os.path.join(apk_dir,apk_file))
            print apk_file
    pass


if __name__ == '__main__':
    # 卸载原先安装的测试软件
    # unistallScript()

    # 对no return value的测试用例重新测试一遍  2023.6.8
    # testAgainForNRV()

    # 删除EAList.txt
    # del_ealist()

    # 6.9本函数无用了
    # compareActivity.txt排除那些虽然在manifest文件里声明了但不属于该应用的Activity
    # exclude_1()

    #

    # 对bug数的统计
    # count_bug_from_txt()

    # 一键签名
    sign_apk("F:\ThesisReproduction\qiu\sootOutput")

    # 一键安装
    install_apk("F:\ThesisReproduction\qiu\sootOutput\signed_apk")

    pass
