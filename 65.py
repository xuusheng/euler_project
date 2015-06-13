#!/usr/bin/python

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

