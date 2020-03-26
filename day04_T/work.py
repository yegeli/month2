"""
      写一个程序，input输入一个设备名称，从文档中提取出这个设备的address is值
        打印出来

         提示： 每一段之间有空行
               设备名称是每一段的第一个单词
               每一段都有address is
"""
import re

file = open('log.txt','r')
note_list =re.split(r'\n\n',file.read())
print(note_list)
name = input("输入设备名称：")
length = len(name)
for note in note_list:
    if note[:length] == name:
        str = note
        print(str)
        break
    # 10f3.116c.e6a7
address = re.search(r"address is (\w+\.){2}\w+",str).group()
print(address)



