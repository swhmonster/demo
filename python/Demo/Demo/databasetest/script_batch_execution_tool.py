#!/usr/python/bin
# -*- coding: utf-8 -*-

import os
import psycopg2

def execute_sql(cur,path):
   # sort(),默认reverse=False升序
    files = os.listdir(path)
    files.sort()
    for f in files:
        sqlfile = open(path + f, encoding="utf-8")
        sql = sqlfile.read()
        cur.execute(sql)
        sqlfile.close()

def main():
    path = "C:\\Users\\文浩.000\\Desktop\\sqltest\\"
    conn = psycopg2.connect(database="db_zhba", user="sa", password="tusc@6789#JKL", host="172.23.21.253", port="6543")
    cur = conn.cursor()
    execute_sql(cur,path)
    conn.close()

main()