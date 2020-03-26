"""
    re模块的使用
"""
import re
s = "yege:1994,daxiao:2303"
# pattern = r"\w+:\d+"
# 结果只有组中的数据
# pattern = r"(\w+):\d+"
pattern = r"(\w+):(\d+)"

l = re.findall(pattern,s)
print(l)

# 生成正则表达式对象
regex = re.compile(pattern)
l = regex.findall(s)
# l = regex.findall(s,0,13) # 目标字符串变为：s[0:13]
l1 = re.split(r"\W+",s,3)


print(l1)