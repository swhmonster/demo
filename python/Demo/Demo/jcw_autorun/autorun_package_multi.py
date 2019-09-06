#!/usr/python/bin
# -*- coding: utf-8 -*-

import os
import threading
import queue
import sys


# 定义线程类
class myThread(threading.Thread):
    # q为先前组装好的打包任务（及打包所在路径）
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


def collect_packages(proMapList):
    for i, el in enumerate(proMapList):
        os.system(el)


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
        ("zjjdApi", disk + "\\project\\jcw_anhui_xinxihuajianshe_ZJJD\\40_源码\\api"),
        ("dccsform", disk + "\\project\\jcw_anhui_xinxihuajianshe_ZJJD\\40_源码\\审查调查措施")
    ])
    # 临时备份字典
    proMapList = list()

    threads = []
    workQueue = queue.Queue(10)
    if (sys.argv.__len__() == 1):
        pathlist = list(proMap.keys())
        for p in pathlist:
            workQueue.put(proMap.get(p))
            proMapList.append(
                "copy %s %s" % (proMap.get(p) + "\\target\\" + p + ".jar", collect_path))
    else:
        pathlist1 = str(sys.argv[1]).split(",")
        i = 0
        # 根据脚本所带参数，遍历参数，往队列中增加任务（即打包所在路径），并拼接取包路径
        for i in range(0, len(pathlist1)):
            workQueue.put(proMap[pathlist1[i]])
            proMapList.append(
                "copy %s %s" % (proMap[pathlist1[i]] + "\\target\\" + pathlist1[i] + ".jar", collect_path))

    for i in range(1, 8):
        thread = myThread(threadID=i, q=workQueue, disk=disk)
        thread.start()
        threads.append(thread)
    for thread in threads:
        thread.join()
    print("package over!")

    # 批量取包
    print("collecting packages...")
    # 先清空取包路径
    os.system("del /q %s" % (collect_path))
    # 再复制取包
    collect_packages(proMapList)
    print("collect over!")


main()
