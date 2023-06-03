# coding=utf-8
from FindCrashes import *
from qiuPreProcess import *
from qiuLaunchActs import ActivityLauncher
import os


def data_process():
    f = open("F:\\ThesisReproduction\\qiu\\Result_launch\\successACT.txt")
    lines = f.readlines()
    countDic = dict()  # 保存一个apk的activity启动成功个数
    for line in lines:
        ss = line.split("\t")
        apk_name = ss[0]
        if apk_name not in countDic:
            countDic[apk_name] = 0
        countDic[apk_name] = countDic[apk_name] + 1
    print countDic

    totalActNum = 0
    totalLauncedActNum = 0
    for apk_name in countDic.keys():
        f = open("F:\\ThesisReproduction\\qiu\\summaryInfo\\" + apk_name + "\\declaredActivity.txt")
        lines = f.readlines()
        count = 0  # count计算一个apk声明的组件数
        for line in lines:
            if "act_name" in line:
                count = count + 1
        totalActNum = totalActNum + count
        totalLauncedActNum = totalLauncedActNum + countDic[apk_name]
        singleLaunchRate = round(countDic[apk_name] / (count * 1.0), 4)
        print apk_name + "声明了 " + str(count) + "个组件, 启动成功了 " + str(countDic[apk_name]) + " 个Activity, 启动成功率为：" + str(
            singleLaunchRate)

    totalApkNum = len(countDic.keys())

    print "\n"
    print "应用总数：" + str(totalApkNum)
    print "Activity总数：" + str(totalActNum)
    print "启动成功的Activity总数：" + str(totalLauncedActNum)

    print "平均启动成功率为：" + str(round(totalLauncedActNum / (totalActNum * 1.0), 4))


if __name__ == '__main__':
    apk_input_dir = "apk" + os.sep
    apk_output_dir = "apk_processed" + os.sep

    testcase_dir = "F:\\ThesisReproduction\\qiu\\Result_testGen" + os.sep
    launch_dir = "F:\\ThesisReproduction\\qiu\\Result_launch" + os.sep

    # 预处理
    # pre = qiuPreProcess(apk_input_dir, apk_output_dir)
    # pre.exportApp()
    # # pre.instrument()
    # pre.install()

    # exit("zant")

    # 启动测试
    launcher = ActivityLauncher(testcase_dir, launch_dir)
    launcher.launchAct()
    launcher.getLaunchedAct()  # qiu：根据上一行的结果文件，写入Result_launch目录下的isLaunched.txt和successACT.txt中

    # 计算一些数据
    # activity启动成功率、intent有效率
    data_process()

    # [Detect Crashes for Fax Launching]
    # 本模块的流程：查看`\Result_launch\Logs\K9Mail\turn_0`目录下的.logcat文件，将启动activity时发生了崩溃的log 和对应的启动当前activity的iccmsg记录到字典中，
    # 然后写入`\Result_launch\Crashes\K9Mail_crash_All.txt`中，一条崩溃的记录如下，记录了崩溃信息，iccmsg等。
    det = BugDetector(testcase_dir, launch_dir)
    det.detect()
    print "Detect Launching Crashes Finish!"

    print "Finish!"
