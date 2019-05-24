#!/usr/python/bin
# -*- coding: utf-8 -*-

import os

def start_package(disk,path):
    os.system("%s && cd %s && mvn clean && mvn package"%(disk,path))

def main():
    #所在硬盘
    disk="C:"
    #硬盘相对路径
    pathlist=[]
    pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\线索排查会")
    pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\线索排查会")
    pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\agxt")
    pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\案管系统接口服务")
    pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_ZJJD\\40_源码\\ZHBA")
    pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_ZJJD\\40_源码\\api")
    pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\agxt")
    for p in pathlist:
        start_package(disk,p)

main()