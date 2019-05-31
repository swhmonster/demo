#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
import signal
import sys
import datetime


def kill_process(pid):
    if (pid != ''):
        a = os.kill(int(pid), signal.SIGKILL)
        print('已杀死pid为%s的进程,　返回值是:%s' % (pid, a))


def get_pid(port):
    pid = \
        os.popen("netstat -nlp | grep :%s | awk '{print $7}' | awk -F\" / \" '{ print $1 }'" % (port)).read().split(
            '/')[0]
    return pid


def run_program(jar_name):
    os.system("nohup java -jar %s &" % (jar_name))
    print("正在启动：%s" % (jar_name))


def run_tomcat(sh_name):
    os.system("sh %s/bin/startup.sh" % (sh_name))
    print("正在启动：%s" % (sh_name))


def run_program_priority(list, priorityDict):
    i = 0
    for i in range(0, len(list)):
        run_program(list[i])
        print(list[i] + "starting...")
        while get_pid(priorityDict[list[i]]) == '':
            continue
        print(list[i] + "successfully started!!!")
    return True


def run_self_define(gpus, proMap, sysMap):
    if (gpus.find("tomcat") == 0):
        tomcatlist = str(gpus).split(",")
        j = 0
        for j in range(0, len(tomcatlist)):
            portlist = str(tomcatlist[j]).split(":")
            kill_process(get_pid(portlist[1]))
            run_tomcat(proMap[portlist[1]])
    else:
        list = str(gpus).split(",")
        j = 0
        for j in range(0, len(list)):
            kill_process(get_pid(sysMap[list[j]]))
            run_program(proMap[sysMap[list[j]]])


# 备份方法
def backup():
    timenow = datetime.datetime.now().strftime("%Y%m%d%H%M%S")
    os.rename(path, path + ".bak" + str(timenow))


def main():
    # path = "/home/ba/"
    # 项目路径字典
    proMap = dict([
        ("2020", "/home/ba/jar_agxt_2020/agxt.jar"),
        ("2022", "/home/ba/jar_agxtApi_2022/agxtApi.jar"),
        ("2300", "/home/ba/jar_dept-prop_2300/dept-prop.jar"),
        ("2021", "/home/ba/jar_detail_2021/detail.jar"),
        ("2024", "/home/ba/jar_filesys_2024/filesys.jar"),
        ("2025", "/home/ba/jar_serial_2025/serial.jar"),
        ("3939", "/home/ba/jar_xspch_3939/xspch.jar"),
        ("2280", "/home/ba/jar_xxtx_2280/xxtx.jar"),
        ("2019", "/home/ba/jar_zjjdApi_2019/zjjdApi.jar"),
        ("81", "/home/ba/tomcat_ajsl_81"),
        ("82", "/home/ba/tomcat_scdc_82"),
        ("83", "/home/ba/tomcat_zjjd_83")
    ])

    # 项目端口号字典
    sysMap = dict([
        ("agxt", "2020"),
        ("agxtApi", "2022"),
        ("dept-prop", "2300"),
        ("detail", "2021"),
        ("filesys", "2024"),
        ("serial", "2025"),
        ("xspch", "3939"),
        ("xxtx", "2280"),
        ("zjjdApi", "2019"),
        ("ajsl", "81"),
        ("scdc", "82"),
        ("zjjd", "83")
    ])
    # 启动需优先启动的项目
    # 请按优先级顺序将服务添加到列表中，默认顺序先加的优先级高
    # priorityDict = dict(["path","port"])

    if (sys.argv.__len__() == 1):
        # 根据pid杀进程
        plist = list(proMap.keys())
        for port in plist:
            kill_process(get_pid(port))

        # 优先启动
        # run_program_priority(list(priorityDict.keys()),priorityDict)

        # 启动springboot项目
        for i in range(0, list(proMap.values()).__len__()):
            if (list(proMap.values())[i].find("tomcat") > 0):
                run_tomcat(list(proMap.values())[i])
            else:
                run_program(list(proMap.values())[i])

    # 自定义启动，全部服务停止
    if (sys.argv.__len__() == 2):
        if (str(sys.argv[1]).__eq__("shutdown")):
            plist = list(proMap.keys())
            for port in plist:
                kill_process(get_pid(port))
        else:
            run_self_define(sys.argv[1], proMap, sysMap)

    # 自定义停止
    if (sys.argv.__len__() == 3):
        klist = str(sys.argv[2]).split(",")
        k = 0
        for k in range(0, len(klist)):
            kill_process(get_pid(sysMap[klist[k]]))


main()
