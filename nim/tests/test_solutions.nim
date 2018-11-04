
import unittest

import project_euler/p001_multiples
import project_euler/p002_even_fib
import project_euler/p003_largest_prime

test "solution 1":
  check p001_multiples.solution(10) == 23
  check p001_multiples.solution(1_000) == 233_168
  check p001_multiples.solution2(10) == 23
  check p001_multiples.solution2(1_000) == 233_168

test "solution 2":
  check p002_even_fib.solution(10) == 10
  check p002_even_fib.solution(60) == 44
  check p002_even_fib.solution2(10) == 10
  check p002_even_fib.solution2(60) == 44

test "solution 3":
  check p003_largest_prime.solution(13195) == 29
  check p003_largest_prime.solution2(13195) == 29
