#!/usr/python/bin
# -*- coding: utf-8 -*-

import os
import psycopg2


def execute_sql(cur, path):
    # sort(),默认reverse=False升序
    files = os.listdir(path)
    files.sort()
    for f in files:
        print("execute %s" % (path+f))
        sqlfile = open(path + f, encoding="utf-8")
        sql = sqlfile.read()
        try:
            cur.execute(sql)
        except:
            print(sql)
            raise
        sqlfile.close()


def main():
    path = "C:\\project\\安徽办案\\zhba\\"
    path_list = []
    path_list.append("01案管\\")
    path_list.append("02线索排查会\\")
    path_list.append("03消息服务\\")
    path_list.append("04文件预览\\")
    path_list.append("05组织结构扩展\\")
    path_list.append("06办案系统\\")
    path_list.append("07增量脚本\\")
    path_list.append("08版本控制\\")
    conn = psycopg2.connect(database="db_zhba_0528", user="sa", password="tusc@6789#JKL", host="172.23.21.253",
                            port="6543")
    cur = conn.cursor()
    i=0
    for i in range(0,len(path_list)):
        execute_sql(cur, path + path_list[i])
    conn.close()
    print("execute over!")

main()
