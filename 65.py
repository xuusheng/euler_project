#!/usr/bin/python
# 第一次用python解决实际问题，虽然问题比较简单，但还是挺高兴
# 感觉这个问题适合用命令式语言解决

def f (n):
    if (n % 3 == 0):
        return 2 * n // 3
    else:
        return 1

def sumd(n):
    sum = 0
    while (n):
        sum += n % 10
        n //= 10
    return sum


def a(n):
    a = 2
    b = 3
    for i in range(3,n+1):
        t = b * f(i) + a
        a = b
        b = t
    return t

print(a(100), sumd(a(100)))

