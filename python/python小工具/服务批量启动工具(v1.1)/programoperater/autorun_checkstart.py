#!/usr/python/bin
# -*- coding: utf-8 -*-

import os

from settings import programsetting

proMap = dict(zip(programsetting.sysMap.values(), programsetting.sysMap.keys()))

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
