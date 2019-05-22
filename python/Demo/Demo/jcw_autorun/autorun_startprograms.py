#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
import signal


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
    os.system("nohup sh %s &"%(sh_name))
    print("正在启动：%s" % (sh_name))

def run_program_priority(jar_name, port):
    run_program(jar_name)
    while get_pid(port) == '':
        print(jar_name + "starting...")
    return True


def main():
    path = "/home/ba/"
    # 端口号集合
    portSet = set()
    portSet.add("3939")  # 1 xspch
    # portSet.add("2019")  # 2 zjjdapi
    # portSet.add("2022")  # 3 agapi
    # portSet.add("2021")  # 4 detail
    # portSet.add("2024")  # 5 filesys
    # portSet.add("2300")  # 6 dept-prop
    # portSet.add("2025")  # 7 serial
    # portSet.add("2280")  # 8 xxtx
    # portSet.add("2020")  # 9 agxt
    # portSet.add("81")  # 9 ajsl
    # portSet.add("82")  # 9 scdc
    # portSet.add("83")  # 9 zjjd

    # 项目部署路径列表
    programList = []
    programList.append(path + "jar_xspch_3939/xspch.jar")
    # programList.append(path + "zjjdApi/zjjdApi.jar")
    # programList.append(path + "xqfw/detail.jar")
    # programList.append(path + "xspch.jar")
    # programList.append(path + "xspch.jar")
    # programList.append(path + "xspch.jar")

    # tomcat启动文件路径列表
    tomcatList=[]
    # tomcatList.append(path+"tomcat_ajsl_81")
    # tomcatList.append(path+"tomcat_scdc_82")
    # tomcatList.append(path+"tomcat_zjjd_83")

    # 根据pid杀进程
    for port in portSet:
        kill_process(get_pid(port))

    # 启动需优先启动的项目
    # if(run_program_priority(path+"xxtx/xxtx.jar","2280")):
    #     for i in range(0, programList.__len__()):
    #         run_program(programList[i])

    # 启动springboot项目
    for i in range(0, programList.__len__()):
        run_program(programList[i])

    # 启动tomcat
    for i in range(0,tomcatList.__len__()):
        run_tomcat(tomcatList[i])


main()
