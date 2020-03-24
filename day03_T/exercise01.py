"""
文件读取示例
"""

f = open('timg.jpeg','rb')

data = f.read()
print(data)

f.close()
