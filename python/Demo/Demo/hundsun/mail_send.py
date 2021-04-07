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

# ָ��url
url = "http://192.168.159.27:10315/oismail/tianjian/newEmail"
# ������ SMTP ��������
mail_host = 'mail.hundsun.com'  # ���÷�����
mail_user = 'sunwh33441'  # �û���
mail_pass = 'qwer123!@#'  # ����
sender = 'sunwh33441@hundsun.com'
# mail_recipient = 'sunwh33441@hundsun.com,lujie32015@hundsun.com,'
mail_recipient = 'sunwh33441@hundsun.com,lujie32015@hundsun.com,wujl27952@hundsun.com'
# file_path = "E:\\seeauto"  # ����������ļ��洢·��
file_path = u"E:\\����ʼ��ݴ�·��"  # ����������ļ��洢·��
file_prefix = u"�����깺֪ͨ"  # �ļ�ǰ׺


# url = '#url#' # ָ��url
# mail_host = '#mail_host#'  # ���÷�����
# mail_user = '#mail_user#'  # �û���
# mail_pass = '#mail_pass#'  # ����
# mail_recipient = '#mail_recipient#'  # �ռ���
# sender = '#sender#'  # ������
# file_path = u"#file_path#"
# file_prefix = u"#file_prefix#"


def sendMail(subject, receiver, content, carbon_copy, excel_data):
    receivers = receiver.split(",")  # �����ʼ���
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
    # xlsx.add_header('Content-Disposition', 'attachment', filename=file_name)  # filenameҪת��gbk���룬��Ȼ������������
    message.attach(xlsx)
    # if not carbon_copy:
    #     print("�ʼ����⣺" + subject + "���ռ��ˣ�" + receiver)
    # else:
    #     print("�ʼ����⣺" + subject + "���ռ��ˣ�" + receiver + "�������ˣ�" + carbon_copy)
    try:
        smtpObj = smtplib.SMTP()
        smtpObj.connect(mail_host, '25')  # 25 Ϊ SMTP �˿ں�
        smtpObj.login(mail_user, mail_pass)
        smtpObj.sendmail(sender, receivers, message.as_string())
        print(u"�ʼ����ͳɹ�")
        return
    except Exception as e:
        print(u"Error: �޷������ʼ�", e)
        return


def buildExcel(excel_data, file_absoulte_path):
    wb = xlwt.Workbook()
    stock_dict = excel_data['excel']
    for i, e in enumerate(stock_dict):
        # ��ͷ����
        sheet = wb.add_sheet(e)
        sheet.write(0, 0, '��Ʊ����'.decode('gbk'))
        sheet.write(0, 1, '�깺����'.decode('gbk'))
        sheet.write(0, 2, '���'.decode('gbk'))
        sheet.write(0, 3, '��������'.decode('gbk'))
        sheet.write(0, 4, '���۶�������'.decode('gbk'))
        sheet.write(0, 5, '���м۸�(Ԫ/��)'.decode('gbk'))
        sheet.write(0, 6, '���깺����(���)'.decode('gbk'))
        sheet.write(0, 7, '��ע'.decode('gbk'))
        sheet.write(0, 8, '����ָ���������ɣ�'.decode('gbk'))
        sheet.write(0, 9, '����'.decode('gbk'))
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

    # ��Ҫ���ʼ�ʱ������0
    if data["error_no"] != 0:
        basedata = data["email"][0]
        subject = basedata["email_subject"]
        receivers = basedata["mail_recipient"].decode('utf-8').encode('gbk')
        content_list = []
        content_list.append('<p>' + u'����Ͷ��ƽ̨�¹ɶ����Ʊ���£�' + '</p>')
        content_list.append('<p></p>')
        content_list.append('<p>' + u'����    ����   ��ǩ��    ����' + '</p>')
        for i, e in enumerate(data["email"]):
            content_list.append('<p>' + e['email_content'] + '</p>')
        content_list.append('<p></p>')
        content_list.append('<p>' + u'����������������λ��������ͷ�簲�ţ�' + '</p>')
        content_list.append('<p>' + u'Ͷ��ƽ̨���Զ����Ͷ���ָ��������ϵͳ��һ����������辭���ֹ��´����Ϲ�ԭ����������δ���Զ��´���׹�������ϵ��ӦͶ�ʾ����ֹ��´' + '</p>')
        content_list.append('<p>' + u'������������ϵ ��������010-58162890����Ф�ģ�010-58162989��' + '</p>')
        content_list.append('<p>' + u'���׹���' + '</p>')
        content = ''.join(content_list)
        if not basedata["mail_carbon_copy"]:
            carbon_copy = None
        else:
            carbon_copy = basedata["mail_carbon_copy"].decode('utf-8').encode('gbk')
        sendMail(subject, mail_recipient, content, carbon_copy, data)
    else:
        print(data["error_no"], data["error_info"])


main()
