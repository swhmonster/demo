#!/usr/python/bin
# -*- coding: utf-8 -*-

import os

portSet = set()
portSet.add("3939")# xspch
portSet.add("2019")#zjjdapi
counter=1
for port in portSet:
    pid = \
        os.popen("netstat -nlp | grep :%s | awk '{print $7}' | awk -F\" / \" '{ print $1 }'" % (port)).read().split(
            '/')[0]
    if(pid==""):
        print("未启动port：%s"%(port))
    else:
        print("已启动port,pid：%s,%s；计数：%d"%(port,pid,counter))
        counter+=1

