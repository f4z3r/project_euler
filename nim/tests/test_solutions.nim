
import unittest

import project_euler/p001_multiples
import project_euler/p002_even_fib

test "solution 1":
  check p001_multiples.solution(10) == 23
  check p001_multiples.solution(1_000) == 233_168

test "solution 2":
  check p002_even_fib.solution(10) == 10
  check p002_even_fib.solution(60) == 44
