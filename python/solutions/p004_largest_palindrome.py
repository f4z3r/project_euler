#!/usr/bin/env python3 -OO

"""Largest palindrome product
Problem 4
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is
9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
"""

def run(num):
    max_pal = 0
    for x in range(num):
        for y in range(num):
            test_num = x * y
            if is_palindrome(test_num) and test_num > max_pal:
                max_pal = test_num
    return max_pal


def is_palindrome(num):
    string = str(num)
    idx = 0
    string_len = len(string)
    while idx <= string_len - 1 - idx:
        if string[idx] != string[string_len - 1 - idx]:
            return False
        idx += 1
    return True
