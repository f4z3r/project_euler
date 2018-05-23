#!/usr/bin/env python3 -OO

"""Largest prime factor
Problem 3
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
"""

import math

def run(num):
    factors = []
    for idx in range(1, int(math.sqrt(num))):
        if num % idx == 0:
            if is_prime(idx):
                factors.append(idx)
            if is_prime(num/idx):
                factors.append(num/idx)
    return max(factors)


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
