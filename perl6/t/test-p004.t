use v6;
use Test;
use lib 'lib';

use p004_largest_palindrome;

plan 3;

ok is-palindrome(101);
nok is-palindrome(1010);
is p004(100), 9009;

done-testing;
