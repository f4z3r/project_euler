#!/usr/bin/env perl6

# sum square difference
# problem 6
# the sum of the squares of the first ten natural numbers is,
#
# 1^2 + 2^2 + 3^3 ... + 10^2 = 385
#
# the square of the sum of the first ten natural numbers is,
#
# (1 + 2 + 3 ... + 10)^2 = 3025
#
# hence the difference between the sum of the squares of the first ten natural
# numbers and the square of the sum is,
#
# 3025 - 385 = 2640
#
# find the difference between the sum of the squares of the firt one hundred
# natural numbers and the square of the sum.

sub p006(Int $num where * > 0) returns Int is export {
    ([+] 0..$num) ** 2 - [+] (0..10).map(* ** 2);
}

