#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
import signal
import sys
import datetime
from Demo.jcw_autorun.settings import programsetting


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

def install_package(path):
    os.system("sh %s"%(path));

# 备份方法
def backup(path):
    timenow = datetime.datetime.now().strftime("%Y%m%d%H%M%S")
    os.rename(path, path + ".bak" + str(timenow))


def main():
    install_path=programsetting.path+" _install.sh"
    flag_backup= programsetting.flag_backup
    flag_priority=programsetting.flag_priority
    # 项目路径字典
    proMap = programsetting.proMap

    # 项目端口号字典
    sysMap = programsetting.sysMap

    if (sys.argv.__len__() == 1):
        # 根据pid杀进程
        plist = list(proMap.keys())
        for port in plist:
            kill_process(get_pid(port))

        # 启动需优先启动的项目
        # 请按优先级顺序将服务添加到列表中，默认顺序先加的优先级高
        if(flag_priority):
            priorityDict = programsetting.priorityDict
            run_program_priority(list(priorityDict.keys()),priorityDict)

        # 启动springboot项目
        for i in range(0, list(proMap.values()).__len__()):
            if(flag_backup):
                backup(list(proMap.values())[i])
            else:
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
        elif(str(sys.argv[1]).__eq__("shutdown")):
            install_package(install_path)
        else:
            run_self_define(sys.argv[1], proMap, sysMap)

    # 自定义停止
    if (sys.argv.__len__() == 3):
        klist = str(sys.argv[2]).split(",")
        k = 0
        for k in range(0, len(klist)):
            kill_process(get_pid(sysMap[klist[k]]))


main()
