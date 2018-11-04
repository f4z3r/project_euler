## Largest prime factor
# Problem 3
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

import math

proc is_prime(num: int): bool =
  if num <= 1:
    return false
  elif num <= 3:
    return true
  elif num mod 2 == 0 or num mod 3 == 0:
    return false
  var i = 5
  while i * i <= num:
    if num mod i == 0 or num mod (i + 2) == 0:
      return false
    i += 6
  true

proc solution*(num: int): int =
  var factors: seq[int] = @[]
  for idx in 1..int(sqrt(float(num))):
    if num mod idx == 0:
      if idx.is_prime():
        factors.add(idx)
      if int(num/idx).is_prime():
        factors.add(int(num/idx))
  max(factors)

