"""
      从服务端,会发给客户端这个单词的解释,并在客户端打印一下
"""

# from socket import *
# import re
#
# work_socket = socket(AF_INET,SOCK_DGRAM)
#
# work_socket.bind(("127.0.0.1",8888))
#
# print("等待接收客户端的消息：")
# data,addr = work_socket.recvfrom(1024)
# print("接收到",addr,":",data.decode())
# f = open('dict.txt')
# for line in f:
#     t =re.findall(r"(\w+)\s+(.*)",line)
#     if data.decode() == t[0][0]:
#         work_socket.sendto(t[0][1].encode(),addr)
#         break

from socket import *
import pymysql
# 数据库连接
db = pymysql.connect(host="localhost",
                     port=3306,
                     user="root",
                     password='123456',
                     database='dict',
                     charset='utf8')
# 创建游标（调用sql语句，获取执行结果)
cur = db.cursor()
work_socket = socket(AF_INET,SOCK_DGRAM)
work_socket.bind(("127.0.0.1",8888))
print("等待接收客户端数据")
data,addr = work_socket.recvfrom(1024)
print(data.decode(),addr)
sql = "select mean from words where word = %s;"
try:
    cur.execute(sql,[data.decode()])
    db.commit()
except:
    db.rollback()
t = cur.fetchone()
work_socket.sendto(t[0].encode(),addr)
# 关闭游标和数据库
cur.close()
db.close()

