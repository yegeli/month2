"""


"""
import re
s = """
    Wo ai ni 
我爱你
"""
print(re.findall(r"\w+", s,flags= re.A))

print(re.findall(r".+", s,flags=re.S))

print(re.findall(r"[a-z]+", s,flags=re.I))

print(re.findall(r"^我爱你", s,flags= re.M))
