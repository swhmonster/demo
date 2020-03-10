import os

exe_dic = [
    "\"C:\Program Files (x86)\Tencent\WeChat\WeChat.exe\""
]

for i, e in enumerate(exe_dic):
    os.system("start \"\" %s" % e)
