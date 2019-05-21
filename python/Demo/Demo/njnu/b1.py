#!/usr/bin/python
# -*- coding: utf-8 -*-

import xlrd
import xlwt
import os

b1path = "F:\\sjg\\b1"
b1excel = os.listdir(b1path)
workbook = xlwt.Workbook()
sheet = workbook.add_sheet(u'字段覆盖率', cell_overwrite_ok=True)
for b in b1excel:
    bname = b
    b1workbook = xlrd.open_workbook(b1path + "\\" + bname)
    b1sheet = b1workbook.sheet_by_name("Worksheet")
    b1row = b1sheet.row(1)
    sheet.row()
