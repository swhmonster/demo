#!/usr/python/bin
# -*- coding: utf-8 -*-

import psycopg2

conn=psycopg2.connect(database="db_zhba",user="sa",password="tusc@6789#JKL",host="172.23.21.253",port="6543")
cur=conn.cursor()
cur.execute("select * from db_xspch.t_spgl limit 10")
rows=cur.fetchall()
for row in rows:
    print(row)
    # print(row[0]+"——"+row[2])
conn.close()
