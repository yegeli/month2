#!/usr/bin/python3

"""
编写一个程序，运行程序可以打印当前的时间（time）,然后打印一个双色球号码
         要求在终端能直接 ./ssq.py 运行
"""
import random
import time
class Work:
    def __init__(self):
        self.__listballs = []
    def balls(self):
        while len(self.__listballs) < 6:
            red_balls = random.randint(1,33)
            if red_balls not in self.__listballs:
                self.__listballs.append(red_balls)
        blue_balls = random.randint(1,16)
        self.__listballs.append(blue_balls)
        return self.__listballs

    def print_time(self):
        print(time.strftime("%Y:%m:%d %H:%M:%S",time.localtime()))

if __name__  == '__main__':
    tt = Work()
    tt.print_time()
    print(tt.balls())
