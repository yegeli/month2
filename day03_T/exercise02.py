"""
    查单词，编写一个程序，input输入一个单词，获取单词解释
    提示：每个单词占一行
         单词和解释之间有空格
         单词按照顺序排列（后面单词比前面大）
"""

def find_words(word):
    f = open('dict.txt','r')
    for line in f:
        w = line.split(' ')[0]
        if w > word:
            print("没有单词")
            break
        if w == word:
            print(w)
            print(' '.join(line.split(' ')[1:]).replace(' ', ''))
            break
    else:
        print("没有该单词")
    f.close()

word = input("请输入单词：")
find_words(word)



