#!/usr/bin/env perl6

# largest prime factor
# problem 3
# the prime factors of 13195 are 5, 7, 13, and 29.
#
# what is the largest prime factor of the number 600851475143?

sub p003(Int $num where $num > 0) returns Int is export {
    return $num if $num.is-prime;
    my @factors = flat(2, (3, 5 ...^ * > $num.sqrt))
        .grep({ $num %% $_ && .is-prime })
        .map({ ($num div $_).is-prime
            ?? ($_, $num div $_)
            !! $_ });
    @factors.max;
} 
