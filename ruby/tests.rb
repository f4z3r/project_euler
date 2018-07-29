#!/usr/bin/env ruby -w

require 'test/unit'

require_relative 'solutions/p001_multiples.rb'
require_relative 'solutions/p002_even_fib.rb'

class TestSolutions < Test::Unit::TestCase
  def test_p001
    assert_equal(23, P001::run(10))
  end

  def test_p002
    assert_equal(44, P002::run(90))
  end
end
