#!/usr/python/bin
import queue
import random
import threading
import time

from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException


class myThread(threading.Thread):
    # q为先前组装好的打包任务（及打包所在路径）
    def __init__(self, threadID, q):
        threading.Thread.__init__(self)
        self.threadID = threadID
        self.q = q

    def run(self):
        click_to_thousand(self.q)


def click_to_thousand(user_list):
    while not user_list.empty():
        driver = webdriver.Chrome(executable_path="C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe")
        driver.get("http://180.168.3.74:9999/index")
        time.sleep(3)  # 等待页面加载

        try:
            user_input = driver.find_element_by_id('username')
            password_input = driver.find_element_by_id('password')
            user_input.send_keys(user_list.get())
            password_input.send_keys('6789@jkl')
            driver.find_element_by_class_name('btn-sign').click()
        except NoSuchElementException:
            driver.find_element_by_link_text('退出').click()
        a = 0
        time.sleep(1)
        driver.find_element_by_link_text('标注任务').click()
        while (a < 600):
            try:
                driver.switch_to.frame(driver.find_element_by_name('content'))
                commit_list = driver.find_elements_by_class_name('btn-common')
                for i, e in enumerate(commit_list):
                    e.click()
                    time.sleep(random.random()*10)
                    if(i==3):
                        break
                # driver.find_element_by_class_name('btn-common-large').click()
                drop_list = driver.find_elements_by_class_name('btn-error')
                for i, e in enumerate(drop_list):
                    e.click()
                    time.sleep(random.random()*10)
                driver.switch_to.default_content()
                driver.find_element_by_link_text('标注任务').click()
                a = a + 1
            except Exception:
                driver.refresh()
        driver.close()


def main():
    user_list = ['dongshufeng',
                 'dingxiaohan',
                 'lingguoqing',
                 'sijiachang',
                 'chongjingjing',
                 'xuexiangfei'
                 ]
    threads = []
    workQueue = queue.Queue(10)
    for i, ul in enumerate(user_list):
        workQueue.put(ul)
    for i in range(1, 2):
        thread = myThread(threadID=i, q=workQueue)
        thread.start()
        threads.append(thread)
    for thread in threads:
        thread.join()
    print("click over!")


main()
