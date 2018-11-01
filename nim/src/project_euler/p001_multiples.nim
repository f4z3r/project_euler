# Multiples of 3 and 5
#
# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these
# multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

from math import sum
from sugar import lc,`[]`

proc solution*(num: int): int =
  result = sum(lc[x | (x <- 1..<num, x mod 3 == 0 or x mod 5 == 0), int])
