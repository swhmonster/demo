# !/usr/bin/python
# !coding=gbk

import json
import smtplib
import time
import urllib
from email.mime.application import MIMEApplication
from email.mime.multipart import MIMEMultipart

import xlrd
import xlwt
import socket
from email.mime.text import MIMEText
import sys

socket.setdefaulttimeout(30)
reload(sys)
sys.setdefaultencoding('utf-8')

# 指定url
url = "http://192.168.159.27:10315/oismail/tianjian/newEmail"
# 第三方 SMTP 服务配置
mail_host = 'mail.hundsun.com'  # 设置服务器
mail_user = 'sunwh33441'  # 用户名
mail_pass = 'qwer123!@#'  # 口令
sender = 'sunwh33441@hundsun.com'
# mail_recipient = 'sunwh33441@hundsun.com,lujie32015@hundsun.com,'
mail_recipient = 'sunwh33441@hundsun.com,lujie32015@hundsun.com,wujl27952@hundsun.com'
# file_path = "E:\\seeauto"  # 代理服务器文件存储路径
file_path = u"E:\\天鉴邮件暂存路径"  # 代理服务器文件存储路径
file_prefix = u"网下申购通知"  # 文件前缀


# url = '#url#' # 指定url
# mail_host = '#mail_host#'  # 设置服务器
# mail_user = '#mail_user#'  # 用户名
# mail_pass = '#mail_pass#'  # 口令
# mail_recipient = '#mail_recipient#'  # 收件人
# sender = '#sender#'  # 发件人
# file_path = u"#file_path#"
# file_prefix = u"#file_prefix#"


def sendMail(subject, receiver, content, carbon_copy, excel_data):
    receivers = receiver.split(",")  # 接收邮件人
    message = MIMEMultipart()
    # message = MIMEText(content, 'html', 'utf-8')
    message['From'] = sender
    message['To'] = receiver
    message['Cc'] = carbon_copy
    message['Subject'] = subject
    message.attach(MIMEText(content, 'html', 'utf-8'))
    file_name = file_prefix + str(time.strftime("%Y%m%d")) + ".xls"
    file_absoulte_path = file_path + "\\" + file_name
    buildExcel(excel_data, file_absoulte_path)
    xlsx = MIMEApplication(open(file_absoulte_path, 'rb').read())
    xlsx["Content-Type"] = 'application/octet-stream'
    xlsx["Content-Disposition"] = 'attachment; filename="%s.xls"' % file_prefix.encode('utf-8')
    # xlsx.add_header('Content-Disposition', 'attachment', filename=file_name)  # filename要转成gbk编码，不然会有中文乱码
    message.attach(xlsx)
    # if not carbon_copy:
    #     print("邮件主题：" + subject + "，收件人：" + receiver)
    # else:
    #     print("邮件主题：" + subject + "，收件人：" + receiver + "，抄送人：" + carbon_copy)
    try:
        smtpObj = smtplib.SMTP()
        smtpObj.connect(mail_host, '25')  # 25 为 SMTP 端口号
        smtpObj.login(mail_user, mail_pass)
        smtpObj.sendmail(sender, receivers, message.as_string())
        print(u"邮件发送成功")
        return
    except Exception as e:
        print(u"Error: 无法发送邮件", e)
        return


def buildExcel(excel_data, file_absoulte_path):
    wb = xlwt.Workbook()
    stock_dict = excel_data['excel']
    for i, e in enumerate(stock_dict):
        # 表头设置
        sheet = wb.add_sheet(e)
        sheet.write(0, 0, '股票代码'.decode('gbk'))
        sheet.write(0, 1, '申购代码'.decode('gbk'))
        sheet.write(0, 2, '简称'.decode('gbk'))
        sheet.write(0, 3, '公告日期'.decode('gbk'))
        sheet.write(0, 4, '配售对象名称'.decode('gbk'))
        sheet.write(0, 5, '发行价格(元/股)'.decode('gbk'))
        sheet.write(0, 6, '拟申购数量(万股)'.decode('gbk'))
        sheet.write(0, 7, '备注'.decode('gbk'))
        sheet.write(0, 8, '冻款指令数量（股）'.decode('gbk'))
        sheet.write(0, 9, '主承'.decode('gbk'))
        for j, e2 in enumerate(stock_dict.get(e)):
            k = j + 1
            sheet.write(k, 0, e2['reportCodeResearch'])
            sheet.write(k, 1, e2['reportCodeOther'])
            sheet.write(k, 2, e2['stockName'])
            sheet.write(k, 3, e2['issueNoticeDate'])
            sheet.write(k, 4, e2['objectName'])
            sheet.write(k, 5, e2['advisePrice'])
            sheet.write(k, 6, e2['adviseAmount'])
            sheet.write(k, 7, e2['remark'])
            sheet.write(k, 8, e2['freezeAmount'])
            sheet.write(k, 9, e2['orgNameListStr'])
    return wb.save(file_absoulte_path)


def main():
    response = urllib.urlopen(url=url)
    data = response.read()
    data = data.decode('utf-8')
    print data
    data = json.loads(data)

    # headers = {'Content-type': 'application/json'}
    # connection = http.client.HTTPConnection("localhost:10315", timeout=10)
    # params = urllib.parse.urlencode({})
    # connection.request("GET", "/oismail/tianjian/newEmail", params, headers)
    # response = json.loads(connection.getresponse().read())

    # 需要发邮件时不等于0
    if data["error_no"] != 0:
        basedata = data["email"][0]
        subject = basedata["email_subject"]
        receivers = basedata["mail_recipient"].decode('utf-8').encode('gbk')
        content_list = []
        content_list.append('<p>' + u'今日投管平台新股冻款股票如下：' + '</p>')
        content_list.append('<p></p>')
        content_list.append('<p>' + u'代码    名称   中签率    主承' + '</p>')
        for i, e in enumerate(data["email"]):
            content_list.append('<p>' + e['email_content'] + '</p>')
        content_list.append('<p></p>')
        content_list.append('<p>' + u'详情请见附件，请各位经理做好头寸安排！' + '</p>')
        content_list.append('<p>' + u'投管平台将自动发送冻款指令至恒生系统，一般情况下无需经理手工下达。若因合规原因或其他情况未能自动下达，交易管理部将联系相应投资经理手工下达。' + '</p>')
        content_list.append('<p>' + u'如有问题请联系 赵忠敏（010-58162890），肖夏（010-58162989）' + '</p>')
        content_list.append('<p>' + u'交易管理部' + '</p>')
        content = ''.join(content_list)
        if not basedata["mail_carbon_copy"]:
            carbon_copy = None
        else:
            carbon_copy = basedata["mail_carbon_copy"].decode('utf-8').encode('gbk')
        sendMail(subject, mail_recipient, content, carbon_copy, data)
    else:
        print(data["error_no"], data["error_info"])


main()
