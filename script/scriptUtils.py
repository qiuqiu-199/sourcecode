# coding=utf-8
import os
import time

from utils import executeCmd

def unistallScript():
    pkgFile = open("cmd.txt")
    pkgs = pkgFile.readlines()

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

        #卸载fax的test.apk
        if "fax" in installed_pkg:
            executeCmd("adb uninstall " + installed_pkg.replace("package:", "").split("\n")[0])

if __name__ == '__main__':

    # 卸载原先安装的测试软件
    unistallScript()

