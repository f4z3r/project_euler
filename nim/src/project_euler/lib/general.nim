## General useful functions

import strutils

proc is_palindrome*(num: int): bool =
  let
    str = $num
    str_len = str.len
  var idx = 0
  while idx <= str_len - 1 - idx:
    if str[idx] != str[str_len - idx - 1]:
      return false
    idx += 1
  true
