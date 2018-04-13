#coding=utf-8
import pymysql
import time

d={'4':'3','6':'7','1':'6'}
str = 'asdfgh'
l = d.items()
col=''
var=''
for i in d:
    col += i+','
    var += d[i]+','
print(col[:-1])
print(var[:-1])
