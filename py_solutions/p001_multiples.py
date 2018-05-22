#!/usr/bin/env python3 -OO

"""Multiples of 3 and 5
Problem 1
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these
multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
"""

from functools import reduce

def run(num):
    def sum_multiples(sum, el):
        if el % 3 == 0 or el % 5 == 0:
            return sum + el
        return sum
    return reduce(sum_multiples, range(num))
