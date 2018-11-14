
import unittest

import project_euler/p001_multiples
import project_euler/p002_even_fib
import project_euler/p003_largest_prime
import project_euler/p004_largest_palindrome
import project_euler/p005_smallest_mult
import project_euler/p006_sum_sq_diff
import project_euler/p007_10001_prime
import project_euler/p008_largest_prod_series
import project_euler/p009_pythagorean_triplet
import project_euler/p010_sum_primes

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

test "solution 4":
  check p004_largest_palindrome.solution(100) == 9009

test "solution 5":
  check p005_smallest_mult.solution(10) == 2520

test "solution 6":
  check p006_sum_sq_diff.solution(10) == 2640

test "solution 7":
  check p007_10001_prime.solution(6) == 13

test "solution 8":
  check p008_largest_prod_series.solution(4) == 5832

test "solution 9":
  check p009_pythagorean_triplet.solution(12) == 60

test "solution 10":
  check p010_sum_primes.solution(10) == 17
