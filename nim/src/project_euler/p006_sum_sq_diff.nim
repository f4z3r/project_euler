# Sum square difference
# Problem 6
# The sum of the squares of the first ten natural numbers is,
#
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is
# 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

import sequtils, sugar, math

proc solution*(num: int): int =
  let sum_of_sq = to_seq(0..num).map(x => x.float.pow(2)).sum.int
  let sq_of_sum = to_seq(0..num).sum.float.pow(2).int
  result = sq_of_sum - sum_of_sq
