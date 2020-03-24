"""
    创建TCP服务器
        1.使用socket()创建一个套接字
        2.使用bind()绑定IP和port
        3.使用listen()使套接字变为可别动连接
        4.使用accept()等待客户端的连接
        5.使用recv/send()接收发送数据

"""

import socket

host = '127.0.0.1'
port = 8080
web = socket.socket()
web.bind((host,port))
web.listen(5)
print("服务器等待客户端连接....")
while True:
    conn,addr = web.accept()
    data = conn.recv(1024)
    print(data)
    c = "恭喜你连接成功啦！！！"
    conn.sendall(c.encode())
    conn.close()

