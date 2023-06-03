# coding=utf-8
from qiuPreProcess import *
from qiuLaunchActs import ActivityLauncher
import os

if __name__ == '__main__':
    apk_input_dir = "apk" + os.sep
    apk_output_dir = "apk_processed" + os.sep


    # 预处理
    # pre = qiuPreProcess(apk_input_dir, apk_output_dir)
    # pre.exportApp()
    # pre.instrument()
    # pre.install()


    # 启动测试
    testcase_dir = "F:\\ThesisReproduction\\qiu\\Result_testGen" + os.sep
    launch_dir = "F:\\ThesisReproduction\\qiu\\Result_launch" + os.sep
    launcher = ActivityLauncher(testcase_dir, launch_dir)
    launcher.launchAct()
    launcher.getLaunchedAct()  # qiu：根据上一行的结果文件，写入Result_launch目录下的isLaunched.txt和successACT.txt中

    print "Fax Launching Finish!"
