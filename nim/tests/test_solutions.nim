
import unittest

import project_euler/p001_multiples

test "solution 1":
  check p001_multiples.solution(10) == 23
  check p001_multiples.solution(1_000) == 233_168
