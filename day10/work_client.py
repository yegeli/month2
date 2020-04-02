"""
input输入一个单词，发送给服务器端
"""
# from socket import *
#
# server_address =("127.0.0.1",8888)
# work_socket = socket(AF_INET,SOCK_DGRAM)
# word = input("输入一个单词：")
# work_socket.sendto(word.encode(),server_address)
#
# data,addr = work_socket.recvfrom(1024)
# print(data.decode())

from socket import *

server_address =("127.0.0.1",8888)
work_socket = socket(AF_INET,SOCK_DGRAM)
word = input("输入一个单词：")
work_socket.sendto(word.encode(),server_address)

data,addr = work_socket.recvfrom(1024)
print(data.decode())