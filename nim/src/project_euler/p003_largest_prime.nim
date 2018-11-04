## Largest prime factor
# Problem 3
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

import math, sequtils, sugar

import lib/primes

proc solution*(num: int): int =
  ## Procedural solution.
  var factors: seq[int] = @[]
  for idx in 1..int(sqrt(float(num))):
    if num mod idx == 0:
      if idx.is_prime():
        factors.add(idx)
      if int(num/idx).is_prime():
        factors.add(int(num/idx))
  max(factors)

proc solution2*(num: int): int =
  ## Functional, less performant but elegant solution.
  to_seq(1..num).filter(x => num mod x == 0 and x.is_prime()).max()
