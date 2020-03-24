"""
作业： 1. 熟练使用文件读写方法 open（）

      2. 向一个文件中每隔 秒写入一行内容

         1. 2020-01-01  10:10:10
         2. 2020-01-01  10:10:12
         3. 2020-01-01  10:10:14
         4. 2020-01-01  10:10:16
         5. 2020-01-01  10:15:17
         6. 2020-01-01  10:15:19

         * 写入的内容可以实时看到
         * 程序终止后如果重新启动，序号能够衔接

         温馨提示：  from time import sleep
                    sleep(2)
"""

import time


while True:
    f = open("time1.txt", 'ab+',1)
    f.seek(0)
    i = len(f.readlines())
    i += 1
    f.seek(0, 2)
    data = time.strftime("%Y:%m:%d %H:%M:%S", time.localtime(time.time()))
    f.write(("%d .%s\n" %(i,data)).encode())
    time.sleep(2)


# 读写方式打开

