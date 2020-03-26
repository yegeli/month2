import re
print(re.findall(r'\b[A-Z]+[a-z]*','Hello I NBA iPython'))

print(re.search(r'\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}','192.168.4.65').group())
print(re.findall('[A-Z][a-z]*', "Hello World"))