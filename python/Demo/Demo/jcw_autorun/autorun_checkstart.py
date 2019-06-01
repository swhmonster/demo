#!/usr/python/bin
# -*- coding: utf-8 -*-

import os

from . import programsetting

proMap = dict(zip(programsetting.proMap.values(),programsetting.proMap.keys()))
# dict([
#         ("2020",  "agxt"),
#         ("2022", "agxtApi"),
#         ("2300",  "dept-prop"),
#         ("2021",  "detail"),
#         ("2024",  "filesys"),
#         ("2025",  "serial"),
#         ("3939",  "xspch"),
#         ("2280",  "xxtx"),
#         ("2019", "zjjdApi"),
#         ("81",  "ajsl"),
#         ("82",  "scdc"),
#         ("83", "zjjd")
#     ])

counter = 1
for port in list(proMap.keys()):
    pid = \
        os.popen("netstat -nlp | grep :%s | awk '{print $7}' | awk -F\" / \" '{ print $1 }'" % (port)).read().split(
            '/')[0]
    if (pid == ""):
        print("未启动port：%s，system：%s" % (port,proMap[port]))
    else:
        print("已启动port：%s ；pid：%s；计数：%d ;system：%s" % (port, pid, counter,proMap[port]))
        counter += 1
