"""
作业： 1. 熟练使用文件读写方法 open（）
      2. 向一个文件中每隔 秒写入一行内容
         1. 2020-01-01  10:10:10
         2. 2020-01-01  10:10:12
         3. 2020-01-01  10:10:14
         4. 2020-01-01  10:10:16
         5. 2020-01-01  10:15:17
         6. 2020-01-01  10:15:1
         * 写入的内容可以实时看到
         * 程序终止后如果重新启动，序号能够衔接
         温馨提示：  from time import sleep
                    sleep(2)
"""

import time

f = open("my.txt", 'a+',1)

while True:
    f.seek(0)
    n = len(f.readlines()) +1
    time.sleep(2)
    msg = "%d. %s\n" % (n, time.ctime())
    f.write(msg)
    n += 1
# 读写方式打开
