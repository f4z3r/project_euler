#!/usr/bin/env python3 -OO

"""Smallest multiple
Problem 5
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
"""

def run(num, div):
    guess = 0
    found = False
    while not found:
        found = True
        guess += num
        for idx in range(1, num + 1):
            quotient = guess / idx
            remainder = guess % idx
            if remainder != 0 or quotient % div != 0:
                found = False

    return guess
