use v6;
use Test;
use lib 'lib';

use p002_even_fib;

plan 2;

is p002(10), 10;
is p002(60), 44;

done-testing;

