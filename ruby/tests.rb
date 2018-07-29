#!/usr/bin/env ruby -w

require 'test/unit'

require_relative 'solutions/p001_multiples.rb'

class TestSolutions < Test::Unit::TestCase
  def test_p001
    assert_equal(23, p001(10))
  end
end
