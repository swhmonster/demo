#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
import signal
import sys


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


def run_program_priority(list, port):
    i = 0
    for i in range(0, len(list)):
        run_program(list[i])
        print(list[i] + "starting...")
        while get_pid(port) == '':
            continue
        print(list[i] + "successfully started!!!")
    return True


def run_self_define(path, gpus):
    # 项目字典
    programMap = dict([("2020", "jar_agxt_2020/agxt.jar"), ("2022", "jar_agxtApi_2022/agxtApi.jar"),
                       ("2300", "jar_dept-prop_2300/dept-prop.jar"),
                       ("2021", "jar_detail_2021/detail.jar"), ("2024", "jar_filesys_2024/filesys.jar"),
                       ("2025", "jar_serial_2025/serial.jar"), ("3939", "jar_xspch_3939/xspch.jar"),
                       ("2280", "jar_xxtx_2280/xxtx.jar"), ("81", "tomcat_ajsl_81"), ("82", "tomcat_scdc_82"),
                       ("83", "omcat_zjjd_83")("2019", "jar_zjjdApi_2019/zjjdApi.jar")])
    if (gpus.find("tomcat") == 0):
        tomcatlist = str(gpus).split(",")
        j = 0
        for j in range(0, len(tomcatlist)):
            portlist = str(tomcatlist[j]).split(":")
            kill_process(get_pid(portlist[1]))
            run_tomcat(path + programMap[portlist[1]])
    else:
        list = str(gpus).split(",")
        j = 0
        for j in range(0, len(list)):
            run_program(path + programMap[list[j]])


def main():
    if (sys.argv.__len__() == 1):
        path = "/home/ba/"
        # 端口号集合
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

        # 项目部署路径列表
        programList = []
        programList.append(path + "jar_agxt_2020/agxt.jar")
        programList.append(path + "jar_agxtApi_2022/agxtApi.jar")
        programList.append(path + "jar_dept-prop_2300/dept-prop.jar")
        programList.append(path + "jar_detail_2021/detail.jar")
        programList.append(path + "jar_filesys_2024/filesys.jar")
        programList.append(path + "jar_serial_2025/serial.jar")
        programList.append(path + "jar_xspch_3939/xspch.jar")
        programList.append(path + "jar_xxtx_2280/xxtx.jar")
        programList.append(path + "jar_zjjdApi_2019/zjjdApi.jar")

        # tomcat启动文件路径列表
        tomcatList = []
        tomcatList.append(path + "tomcat_ajsl_81")
        tomcatList.append(path + "tomcat_scdc_82")
        tomcatList.append(path + "tomcat_zjjd_83")

        # 根据pid杀进程
        for port in portSet:
            kill_process(get_pid(port))

        # 启动需优先启动的项目
        # 请按优先级顺序将服务添加到列表中，默认顺序先加的优先级高
        priorityList = []
        # priorityList.append(path + "xxtx/xxtx.jar")
        # priorityList.append(path + "xxtx/xxtx.jar")
        # priorityList.append(path + "xxtx/xxtx.jar")
        # priorityList.append(path + "xxtx/xxtx.jar")
        # if
        run_program_priority(priorityList, "2280")

        # 启动springboot项目
        for i in range(0, programList.__len__()):
            run_program(programList[i])

        # 启动tomcat
        for i in range(0, tomcatList.__len__()):
            run_tomcat(tomcatList[i])

    # 自定义启动
    if (sys.argv.__len__() > 1):
        kill_process(get_pid(sys.argv[1]))
        run_self_define(path, sys.argv[1])


main()
