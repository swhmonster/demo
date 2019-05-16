#!/usr/python/bin

from selenium import webdriver
import time

driver = webdriver.Chrome(executable_path="C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe")
driver.get("https://www.baidu.com")
# time.sleep(3)#等待页面加载
# print(driver.page_source)#browser.page_source是获取网页的全部html

# 获取页面组件
input = driver.find_element_by_id("kw")  # 找百度搜索输入框
button = driver.find_element_by_id("su")  # 找到“百度一下”的按钮

# 操作页面组件
input.send_keys("soulprogrammer")  # 输入框输入关键字，查找本人博客（搜这个关键词就能找到）
# time.sleep(3)
button.click()  # 点击“百度一下”进行搜索
time.sleep(5)  # 等待页面加载
link = driver.find_element_by_id("1").find_element_by_tag_name("a")
# link=a.find_element_by_tag_name("a")
link.click()
# driver.close()
