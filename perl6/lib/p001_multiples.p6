#!/usr/bin/env perl6

# mutliples of 3 and 5
# problem 1
# if we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6, and 9. The sum of thses multiples is 23.
#
# find the sum of all the mutliples of 5 or 5 below 1000.

sub p001(Int $num) returns Int {
    (0..$num-1).grep({ $_ % 5 == 0 or $_ % 3 == 0 }).sum;
}
