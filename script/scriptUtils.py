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


def testAgainForNRV():
    f = open("nrv.txt")
    lines = f.readlines()
    for line in lines:
        ss = line.split("\t")
        apk_name = ss[0]
        tc_num = ss[1]
        act_name = ss[3]
        res = ss[-1]
        # if "no return value" in res:


# 在使用生成测试用例的工具之前必须调用次脚本删除EAList.txt文件
def del_ealist():
    path = "F:\ThesisReproduction\qiu\summaryInfo"
    list = os.listdir(path)
    list.remove("outInfo.txt")
    for apk_name in list:
        ealist_path = os.path.join(path,apk_name+os.sep+"EAList.txt")
        os.remove(ealist_path)
        print apk_name+"的EAList.txt文件删除成功！"


if __name__ == '__main__':

    # 卸载原先安装的测试软件
    # unistallScript()

    # 对no return value的测试用例重新测试一遍  TODO 还没搞
    # testAgainForNRV()

    # 删除EAList.txt
    del_ealist()
