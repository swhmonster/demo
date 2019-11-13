import os
import time
from concurrent.futures import ProcessPoolExecutor

import requests


def get(url):
    print('%s GET %s' % (os.getpid(), url))
    response = requests.get(url)
    time.sleep(3)
    if response.status_code == 200:
        return {'url': url, 'text': response.text}


def parse(obj):
    res = obj.result()
    print('[%s] <%s> (%s)' % (os.getpid(), res['url'], len(res['text'])))


if __name__ == '__main__':
    urls = [
        'https://www.python.org',
        'https://www.baidu.com',
        'https://www.jd.com',
        'https://www.tmall.com',
    ]
    t = ProcessPoolExecutor(2)
    for url in urls:
        t.submit(get, url).add_done_callback(parse)
    t.shutdown(wait=True)

    print('主', os.getpid())
