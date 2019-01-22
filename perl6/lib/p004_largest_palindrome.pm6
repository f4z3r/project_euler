#!/usr/bin/env perl6

# largest palindrome product
# problem 4
# a palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 x 99.
#
# find the largest palindrome made from the product of two 3-digit numbers.


sub p004(Int $num) returns Int is export {
    (($num - 1...0) X* ($num - 1...0)).lazy.first({is-palindrome($_)});
}

sub is-palindrome(Int $num) returns Bool is export {
    $num == $num.flip;
}

