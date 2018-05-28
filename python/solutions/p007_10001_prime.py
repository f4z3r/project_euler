#!/usr/bin/env python3 -OO

"""10001st prime
Problem 7
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
"""

def run(num):
    assert num > 0, "argument should be positive integer"
    count = 0
    tested_num = 0
    while count < num:
        tested_num += 1
        if is_prime(tested_num):
            count += 1
    return tested_num


def is_prime(num):
    if num <= 1:
        return False
    elif num <= 3:
        return True
    elif num % 2 == 0 or num % 3 == 0:
        return False
    i = 5
    while i * i <= num:
        if num % i == 0 or num % (i + 2) == 0:
            return False
        i += 6
    return True
