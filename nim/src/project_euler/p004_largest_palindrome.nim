# Largest palindrome product
# Problem 4
#
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is
# 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

import lib/general

proc solution*(num: int): int =
  result = 0
  for x in 0..<num:
    for y in 0..<num:
      let test_num = x * y
      if test_num.is_palindrome() and test_num > result:
        result = test_num
