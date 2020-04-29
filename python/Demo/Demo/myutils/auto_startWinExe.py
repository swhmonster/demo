import os

exe_dic = [
    "\"C:\Program Files (x86)\Tencent\WeChat\WeChat.exe\"",
    "\"C:\ideaInstallLocation\\apps\IDEA-U\ch-0\\193.6494.35\\bin\idea64.exe\"",
    "\"C:\ideaInstallLocation\\apps\PyCharm-P\ch-0\\193.6494.30\\bin\pycharm64.exe\"",
    "\"D:\Program Files\Foxmail 7.2\Foxmail.exe\""
]

for i, e in enumerate(exe_dic):
    os.system("start \"\" %s" % e)
