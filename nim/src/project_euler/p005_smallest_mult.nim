# Smallest multiple
# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

proc solution*(num: int): int =
  var found = false
  while not found:
    found = true
    result += num
    for idx in 1..num:
      if result mod idx != 0:
        found = false
        break


# Another solution would be to consider the unique prime factorisation of each factor and find the minimal superset of
# factors that contains all prime factorisations. The element-wise product of this superset would be the result. This
# would be more efficient for very large numbers.
