#!/usr/python/bin

from selenium import webdriver
import time

driver = webdriver.Chrome(executable_path="C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe")
driver.get("http://180.168.3.74:9999/index")
time.sleep(3)#等待页面加载

while(1==1):
    driver.find_element_by_link_text('标注任务').click()
    driver.switch_to.frame(driver.find_element_by_name('content'))
    commit_list=driver.find_elements_by_class_name('btn-common')
    for  i,e in enumerate(commit_list):
        e.click()
        time.sleep(10)
    driver.find_element_by_class_name('btn-common-large').click()
    driver.switch_to.default_content()


