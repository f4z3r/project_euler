# Helper module for prime numbers.

proc is_prime*(num: int): bool =
  ## Computes if `num` is prime.
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
