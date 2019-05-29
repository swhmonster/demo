#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
import sys
import datetime

def rename(path):
    timenow = datetime.datetime.now().strftime("%Y%m%d%H%M%S")
    os.rename(path,path+".bak"+str(timenow))

def main():
    rename(sys.argv[1])

main()
