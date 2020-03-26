"""
    练习2: 在主目录下有若干个文件和目录，需要删除这其中大小不到10字节的普通文件

"""

import os
dir = '/home/tarena/month02/day04_T/'
list = os.listdir(dir)
for file in list:
    if os.path.isfile(dir+file) and os.path.getsize(dir+file) < 10 and file[0] != '.':
        os.remove(dir+file)