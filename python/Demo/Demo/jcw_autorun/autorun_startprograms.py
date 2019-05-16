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
    os.popen("netstat -nlp | grep :%s | awk '{print $7}' | awk -F\" / \" '{ print $1 }'" % (port)).read().split('/')[0]
    return pid


def run_program(jar_name):
    os.system("nohup java -jar %s &" % (jar_name))
    print("正在启动：%s" % (jar_name))

def run_program_priority(jar_name,port):
    run_program(jar_name)
    while get_pid(port)=='':
        print(jar_name+"starting...")
    return True


def main():
    path = "/home/ba/"
    portSet = set()
    portSet.add("3939")#xspch
    #portSet.add("2019")#zjjdapi
    # portSet.add("2280")#xxtx
    # portSet.add("8088")#spfw
    # portSet.add("3939")
    # portSet.add("3939")
    programList = []
    programList.append(path + "xspch/xspch.jar")
    # programList.append(path + "zjjdApi/zjjdApi.jar")
    # programList.append(path + "xqfw/detail.jar")
    # programList.append(path + "xspch.jar")
    # programList.append(path + "xspch.jar")
    # programList.append(path + "xspch.jar")
    for port in portSet:
        kill_process(get_pid(port))
    # if(run_program_priority(path+"xxtx/xxtx.jar","2280")):
    #     for i in range(0, programList.__len__()):
    #         run_program(programList[i])
    for i in range(0, programList.__len__()):
        run_program(programList[i])

main()
