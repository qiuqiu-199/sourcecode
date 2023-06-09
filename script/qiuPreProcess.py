# coding=utf-8
import os
import sys
import shutil
import re
import time
import xml.dom.minidom as xdom


class qiuPreProcess:
    def __init__(self, apkPath, outPath):
        self.apkPath = apkPath
        self.outPath = outPath

    # 通过修改AndroidManifest.xml暴露组件
    def replace(self, path):  # path = K9Mail
        manifest = list()  # 创建一个空的list
        files = os.listdir(path)  # files接收K9Mail目录下文件名字的list
        for ff in files:  # 从K9Mail目录下寻找AndroidManifest.xml文件名字，
            # 并组合成K9Mail/AndroidManifest.xml加入manifest列表中
            if ff == "AndroidManifest.xml":
                manifest.append(os.path.join(path, ff))
        for ff in manifest:
            dom = xdom.parse(ff)  # 使用parse()工厂方法把ff转换为dom对象
            activities = dom.getElementsByTagName("activity")  # 找到activity组件，设置属性android:exported为true，下面的service同理
            for activity in activities:
                if activity.getAttribute("android:exported") is "true":
                    print(activity.getAttribute("android:name"))  # 这条输出语句没看到输出在哪里，唯一有的输出结果是第57行。#解答：该条件没有满足而已
                elif activity.getAttribute("android:exported") is "false":
                    activity.setAttribute("android:exported", "true")
                else:  # 没明白这个else的作用
                    activity.setAttribute("android:exported", "true")
            services = dom.getElementsByTagName("service")
            for service in services:
                if service.getAttribute("android:exported") is "true":
                    print(service.getAttribute("android:name"))
                elif service.getAttribute("android:exported") is "false":
                    service.setAttribute("android:exported", "true")
                else:
                    service.setAttribute("android:exported", "true")
            with open(ff, "w") as fh:  # 不明白这个with的作用
                dom.writexml(fh)

    def exportApp(self):
        apkPath = os.path.abspath(self.apkPath)  # 获取绝对路径
        outPath = os.path.abspath(self.outPath)
        DECOMPILE = "java -jar lib/apktool.jar d -f "
        REBUILD = "java -jar lib/apktool.jar b "
        REMOVE = "rm -r "
        RESIGN = "java -jar lib/signapk.jar lib/platform.x509.pem lib/platform.pk8 "

        ff = os.listdir(apkPath)  # 返回一个包含了从给定的目录下获取到的需要测试的apk名称的list
        for file in ff:
            pattern = ".*\\.apk"
            result = re.findall(pattern, file)  # 识别以.apk结尾的文件名字，返回列表形式
            if len(result) != 0:
                print(file)  # file是你要测试的apk的名称.apk。
                # 下面的unsignApk和signApk都是输出路径outpath+系统分隔符+去掉.apk后剩下的apk名字+_unsign.apk或者.apk
                # 比如file = aaa.apk,那么unsignApk = apk_Processed\aaa_unsign.apk,signApk同理
                unsignApk = outPath + os.sep + file[:-4] + "_unsigned.apk"
                signApk = outPath + os.sep + file[:-4] + ".apk"
                if os.path.exists(signApk):  # 如果标记文件signApk存在则continue，否则接着执行
                    continue

                folder = file[:-4]  # folder是apk的名字
                if not os.path.exists(folder):  # 在apk_processed目录中生成和apk同名的目录
                    os.makedirs(folder)
                decompile = DECOMPILE + apkPath + "/" + file + " -o " + folder
                print (decompile)
                os.system(decompile)
                # java -jar lib/apktool.jar d -f F:\ThesisReproduction\METOOA\Fax\FaxTool\apk/K9Mail.apk -o K9Mail

                self.replace("./" + folder)

                rebuild = REBUILD + folder + " -o " + unsignApk
                print (rebuild)
                os.system(rebuild)
                # java -jar lib/apktool.jar b K9Mail -o F:\ThesisReproduction\METOOA\Fax\FaxTool\apk_processed\K9Mail_unsigned.apk

                resign = RESIGN + unsignApk + " " + signApk
                print (resign)
                os.system(resign)
                #  java -jar lib/signapk.jar lib/platform.x509.pem lib/platform.pk8 F:\ThesisReproduction\METOOA\Fax\FaxTool\apk_processed\K9Mail_unsigned.apk F:\ThesisReproduction\METOOA\Fax\FaxTool\apk_processed\K9Mail.apk

                if os.path.exists(unsignApk):
                    os.remove(unsignApk)
                print folder  # K9Mail
                if os.path.exists(folder):
                    shutil.rmtree(folder, True)  # 递归的删除反编译的文件

    def instrument(self):
        files = os.listdir(self.outPath)
        for name in files:
            if "_ins" in name or os.path.exists(self.outPath + "/" + name[:-4] + "_ins.apk"):
                continue
            if ".apk" in name:  # 寻找.apk文件，用InsDal工具对齐进行instrument
                print "instrument apk " + name
                INSTRU = "java -jar lib/InsDal.jar -f " + self.outPath + "/" + name + "  -m -i"
                print (INSTRU)
                os.system(INSTRU)
                if (os.path.exists(self.outPath + os.sep + "ins_info")):
                    shutil.move(self.outPath + os.sep + "ins_info", self.outPath + os.sep + name[:-4] + "_ins_info.txt")

    def install(self):
        files = os.listdir(self.outPath)
        for name in files:
            if "_ins.apk" in name:
                cmd = "adb install -g " + self.outPath + os.sep + name
                os.system(cmd)


# main function
if __name__ == '__main__':
    apk_input_dir = sys.argv[1] + os.sep
    apk_output_dir = sys.argv[2] + os.sep

    pre = qiuPreProcess(apk_input_dir, apk_output_dir)
    pre.exportApp()
    pre.instrument()
    pre.install()
