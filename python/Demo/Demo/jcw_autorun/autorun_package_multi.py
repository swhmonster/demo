#!/usr/python/bin
# -*- coding: utf-8 -*-

import os
import threading
import queue


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


def main():
    # 所在硬盘
    disk = "C:"
    # 硬盘相对路径
    pathlist = []
    pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\线索排查会")
    pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\agxt")
    pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\案管系统接口服务")
    pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_ZJJD\\40_源码\\ZHBA")
    pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_ZJJD\\40_源码\\api")
    pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\agxt")
    threads = []
    workQueue = queue.Queue(10)
    for p in pathlist:
        workQueue.put(p)
    i = 1
    for i in range(1, 3):
        thread = myThread(threadID=i, q=workQueue, disk=disk)
        thread.start()
        threads.append(thread)
    for thread in threads:
        thread.join()
    print("package over!")


main()
