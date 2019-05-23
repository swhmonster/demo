#!/usr/python/bin
# -*- coding: utf-8 -*-

import os

def start_package(path):
    os.system("cd %s && mvn clean && mvn package"%(path))

def main():
    pathlist=[]
    pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\线索排查会")
    # pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\线索排查会")
    # pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\线索排查会")
    # pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\线索排查会")
    # pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\线索排查会")
    # pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\线索排查会")
    # pathlist.append("C:\\project\\jcw_anhui_xinxihuajianshe_AGXT\\40_源码\\线索排查会")
    for p in pathlist:
        start_package(p)

main()