# Special Pythagorean triplet
# Problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

import math

proc is_triplet(triplet: (int, int, int)): bool =
  let (a, b, c) = triplet
  if not (a < b and b < c):
    return false
  result = a^2 + b^2 == c^2

proc solution*(num: int): int =
  for a in 0..num:
    for b in a..num:
      let c = num - a - b
      if (a, b, c).is_triplet:
        return a * b * c
  raise new_Exception(ValueError, "Input does not have a solution")

