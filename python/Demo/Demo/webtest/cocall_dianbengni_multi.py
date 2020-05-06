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
        driver = webdriver.Chrome(executable_path=r"C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe")
        driver.get("http://139.129.91.26:9999/index")
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
        count = 20000
        time.sleep(1)
        driver.find_element_by_link_text('标注任务').click()
        # while (a < count):
        while (count>0):
            try:
                time.sleep(0.3)
                a = a + 1
                print('number:'+str(a))
                driver.switch_to.frame(driver.find_element_by_name('content'))
                textarea_list=driver.find_elements_by_name('content')
                for i,t in enumerate(textarea_list):
                    t.send_keys('*')
                    time.sleep(random.random() / 20)
                    if (i == 1):
                        break
                commit_list = driver.find_elements_by_class_name('btn-common')
                for i, e in enumerate(commit_list):
                    e.click()
                    time.sleep(random.random() / 10)
                    if (i == 2):
                        break
                drop_list = driver.find_elements_by_class_name('btn-error')
                for i, e in enumerate(drop_list):
                    e.click()
                    time.sleep(random.random() / 10)
                # driver.find_element_by_class_name('btn-common-large').click()
                time.sleep(0.5)
                driver.find_element_by_class_name('btn-common-large').click()
                # driver.find_element_by_link_text('下一批').click()
                # driver.switch_to.default_content()
                # driver.find_element_by_link_text('标注任务').click()

                # alert_log=driver.switch_to.alert()
                # print('当前个数：' + a)
                # alert_log.accept()
            except Exception as e:
                print(e)
                a = a + 1
                if (a < count):
                    driver.refresh()
                    driver.find_element_by_link_text('标注任务').click()
                else:
                    driver.close()
        driver.switch_to.default_content()
        driver.close()


def main():
    user_list = [
        'sijiachang'
    ]
    threads = []
    workQueue = queue.Queue(20)
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
