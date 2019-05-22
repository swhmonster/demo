#!/usr/python/bin
# -*- coding: utf-8 -*-

import os

portSet = set()
portSet.add("3939")  # 1 xspch
portSet.add("2019")  # 2 zjjdapi
portSet.add("2022")  # 3 agapi
portSet.add("2021")  # 4 detail
portSet.add("2024")  # 5 filesys
portSet.add("2300")  # 6 dept-prop
portSet.add("2025")  # 7 serial
portSet.add("2280")  # 8 xxtx
portSet.add("2020")  # 9 agxt
portSet.add("81")  # 9 ajsl
portSet.add("82")  # 9 scdc
portSet.add("83")  # 9 zjjd

counter = 1
for port in portSet:
    pid = \
        os.popen("netstat -nlp | grep :%s | awk '{print $7}' | awk -F\" / \" '{ print $1 }'" % (port)).read().split(
            '/')[0]
    if (pid == ""):
        print("未启动port：%s" % (port))
    else:
        print("已启动port：%s ；pid：%s；计数：%d" % (port, pid, counter))
        counter += 1
