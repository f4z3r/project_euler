#!/usr/bin/env perl6

# 10001st prime
# problem 7
# by listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.
#
# what is the 10 001st prime number ?

sub p007(Int $num where * > 0) returns Int is export {
    my $count = 0;
    for 2..* -> $val {
       $count++ if $val.is-prime;
       return $val if $count == $num;
   }
}
