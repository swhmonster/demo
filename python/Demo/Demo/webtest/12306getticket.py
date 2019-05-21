#!/usr/python/bin

from selenium import webdriver
import time

driver = webdriver.Chrome(executable_path="C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe")
driver.get("https://www.12306.cn/index/")

#获取控件
fromStation=driver.find_element_by_id("fromStationText")
toStation=driver.find_element_by_id("toStationText")
train_date=driver.find_element_by_id("train_date")
chaxun=driver.find_element_by_id("search_one")
time.sleep(1)

#操作控件
fromStation.click()
fromStation.send_keys("南京")
choose1=driver.find_element_by_id("citem_0")
choose1.click()

toStation.click()
toStation.send_keys("上海")
choose2=driver.find_element_by_id("citem_0")
choose2.click()

time.sleep(2)
chaxun.click()

#查询后页面操作
time.sleep(5)
table=driver.find_element_by_tag_name("tbody")
table_row=driver.find_elements_by_tag_name("tr")
i=1
for i in range(len(table_row)):
    row_cell=table_row[i].find_element_by_css_selector("td[id^=ZE]")
    if(row_cell.__eq__("有")):
        link=table_row[i].find_elements_by_class_name("no-br")
        link.click()
