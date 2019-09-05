#!/usr/python/bin
# -*- coding: utf-8 -*-

import os
import threading
import queue
import sys


class myThread(threading.Thread):
    def __init__(self, threadID, q, disk):
        threading.Thread.__init__(self)
        self.threadID = threadID
        self.q = q
        self.disk = disk

    def run(self):
        start_package(self.q, self.disk)


def start_package(q, disk):
    while not q.empty():
        p = q.get()  # 默认block=True, timeout=None
        os.system("%s && cd %s && mvn clean && mvn package -DskipTests" % (disk, p))


def collect_packages(proMap, collect_path):
    for i, el in enumerate(proMap.keys()):
        os.system("copy %s %s" % (proMap.get(el) + "\\target\\" + el + ".jar", collect_path))


def main():
    # 所在硬盘
    disk = "C:"
    # 包收集路径
    collect_path = "C:\\Users\\文浩.000\\Desktop\\collect_packages"
    # 硬盘相对路径
    proMap = dict([
        ("xspch", disk + "\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\线索排查会"),
        ("agxt", disk + "\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\agxt"),
        ("agxtApi", disk + "\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\案管系统接口服务"),
        ("xxtx", disk + "\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\消息提醒"),
        ("agxtApi", disk + "\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\案管系统接口服务"),
        ("zjjdApi", disk + "\\project\\jcw_anhui_xinxihuajianshe_ZJJD\\40_源码\\api"),
        ("dccsform", disk + "\\project\\jcw_anhui_xinxihuajianshe_ZJJD\\40_源码\\审查调查措施")
    ])

    threads = []
    workQueue = queue.Queue(10)
    if (sys.argv.__len__() == 1):
        pathlist = list(proMap.values())
        for p in pathlist:
            workQueue.put(p)
    else:
        pathlist1 = str(sys.argv[1]).split(",")
        i = 0
        for i in range(0, len(pathlist1)):
            workQueue.put(proMap[pathlist1[i]])

    for i in range(1, 3):
        thread = myThread(threadID=i, q=workQueue, disk=disk)
        thread.start()
        threads.append(thread)
    for thread in threads:
        thread.join()
    print("package over!")

    # 批量取包
    print("collecting packages...")
    os.system("del /q %s" % (collect_path))
    collect_packages(proMap, collect_path)
    print("collect over!")


main()
