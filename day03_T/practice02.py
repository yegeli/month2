"""
    创建TCP客户端
        使用浏览器作为客户端接收数据
"""
import socket
v = socket.socket()
host = '127.0.0.1'
port = 8080
v.connect((host, port))
send_data = input("请输入要发送的数据：")
v.send(send_data.encode())
recevData = v.recv(1024).decode()
print("接收的数据为：",recevData)

v.close()

