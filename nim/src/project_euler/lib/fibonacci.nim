# Helper module for fibonacci numbers

iterator fib*(limit = -1): int =
  ## Interator returning a number of fibonacci numbers.
  var
    count = 0
    prev  = 0
    curr  = 1
  while limit < 0 or count < limit:
    count += 1
    yield curr
    var temp = curr
    curr = prev + curr
    prev = temp

iterator fib_with_ceil*(ceil: int): int =
  ## Iterator returning fibonacci numbers as long as they are strictly below `ceil`.
  var
    prev  = 0
    curr  = 1
  while curr < ceil:
    yield curr
    var temp = curr
    curr = prev + curr
    prev = temp

