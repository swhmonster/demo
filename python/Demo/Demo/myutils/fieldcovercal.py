#!/usr/bin/python
# -*- coding: utf-8 -*-

import xlrd
import xlwt
import os
from xml.dom.minidom import parse
import xml.dom.minidom


# xlrd 主要用来读Excel
# xlwt 主要用来写Excel
# 用dom来解析xml

def zdfgsl(path, smdPath, xmlPath):
    smd = os.listdir(smdPath)
    xml1 = os.listdir(xmlPath)
    workbook = xlwt.Workbook()
    sheet = workbook.add_sheet(u'字段覆盖率', cell_overwrite_ok=True)
    smdSet = set()
    r = 0
    c = 0
    for s in smd:
        sname = s
        for x in xml1:
            xname = x
            count = 0
            if x.split('.')[0].__eq__(s.split('案件')[0]):
                print(s + "————————" + x)
                smdFile = xlrd.open_workbook(smdPath + '//' + sname)
                smdSheet = smdFile.sheet_by_name('COL')
                for i in range(15, smdSheet.nrows):
                    if smdSheet.cell_value(i, 0).__eq__('----'):
                        pre = smdSheet.cell_value(i, 1)
                        continue
                    smdSet.add(pre + '\\' + smdSheet.cell_value(i, 2))
                    if smdSheet.cell_value(i, 0).__eq__('<<<<'):
                        break
                DOMTree = xml.dom.minidom.parse(xmlPath + '//' + xname)
                elobj = DOMTree.documentElement
                pro = elobj.getElementsByTagName('XMLNode')
                for j in range(len(pro)):
                    if (pro[j].firstChild != None):
                        if (pro[j].firstChild.data in smdSet):
                            count += 1
                fgl = count / smdSet.__len__()
                sheet.write(r, c, x.split('.')[0])
                sheet.write(r, c + 1, fgl)
                r += 1
    workbook.save(path)


def main():
    path = r'C://Users//文浩.000//Desktop//字段覆盖梳理v2.1.6-patch6.xls'
    smdPath = r'C://Users//文浩.000//Desktop//smd'
    xmlPath = 'E://IDEA//export15xml//src//config//tabledesc//np'
    zdfgsl(path, smdPath, xmlPath)


main()
