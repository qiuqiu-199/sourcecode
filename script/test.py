# coding=utf-8
import os
from string import lower
import time

from utils import executeCmd


def fun1(self):
    f = open("F:\ThesisReproduction\qiu\Result_launch\compareActivity.txt")
    lines = f.readlines()
    count = 0
    for line in lines:
        ss = line.split("\t")
        if ss[3] == ss[4] and ss[5].strip() == "no":
            count = count + 1
            print line
    print count


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


def getActs(fn):
    actSet = set()
    actFile = "F:\ThesisReproduction\qiu\summaryInfo" + os.sep + fn + os.sep + "declaredActivity.txt"
    fr = open(actFile, "r")
    for line in fr.readlines():
        if ("act_name" in line):
            actSet.add(line.replace("act_name: ", "").strip())
    fr.close()
    return actSet


if __name__ == '__main__':
    s = "boolean-override_crypto_warning, Parcelable-signature, String-special_folder, int-result_code, byteArray-search_bytes, String-folder, Bundle-app_data->(String-com.fsck.k9.search_account,String-com.fsck.k9.search_folder), Parcelable-insecure_detail_intent, Parcelable-decryption, String-query, Parcelable-intent, boolean-no_threading, Parcelable-error, String-account, String-message_reference"
    ss = s.split(", ")
    s1 = "Parcelable-intent,Parcelable-insecure_detail_intent,boolean-override_crypto_warning,Parcelable-decryption,String-folder,String-special_folder,String-message_reference,Parcelable-error,boolean-no_threading,String-query,String-account,byteArray-search_bytes,Parcelable-signature,int-result_code"
    ss1 = s1.split(",")
    print s==s1