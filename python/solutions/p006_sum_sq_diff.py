#!/usr/bin/env python3 -OO

"""Sum square difference
Problem 6
The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)^2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is
3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
"""


def run(num):
    upto = num + 1
    # compute square of sum
    sq_sum = int(pow(sum(range(upto)), 2))
    # compute sum of squares
    sum_sq = sum(map(lambda x: x**2, range(upto)))
    # compute difference
    return sq_sum - sum_sq
