# Summation of primes
# Problem 10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

import lib/primes

proc solution*(num: int): int =
  for val in 0..<num:
    if val.is_prime:
      result += val
