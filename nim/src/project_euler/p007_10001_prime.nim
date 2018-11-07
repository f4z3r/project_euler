# 10001st prime
# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?

import lib/primes

proc solution*(num: int): int =
  ## Naive solution using no optimised prime computer.
  var count = 0
  result = 1
  while count < num:
    result += 1
    if result.is_prime:
      count += 1

