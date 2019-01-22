#!/usr/bin/env perl6

# smallest multiple
# problem 5
# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 witout any remainder.
#
# what is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20.

sub p005(Int $num where * > 0) returns Int is export {
    [lcm] 1..$num;
}

