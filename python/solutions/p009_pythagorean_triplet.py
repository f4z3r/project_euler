#!/usr/bin/env python3 -OO

"""Special Pythagorean triplet
Problem 9
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
"""


def run(num):
    for a in range(1, num + 1):
        for b in range(a, num + 1):
            c = num - a - b
            if is_triplet(a, b, c):
                return a * b * c

    raise ValueError("Input does not have a valid solution")



def is_triplet(a, b, c):
    if not a < b < c:
        return False
    return a**2 + b**2 == c**2
