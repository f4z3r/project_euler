#!/usr/bin/env ruby -w

require 'prime'

module P003
  def self.run num
    factors = []
    (2..Math.sqrt(num).to_i).each do |i|
      if num % i == 0
        if Prime.prime?(i)
          factors << i
        end
        if Prime.prime?(i/num)
          factors << i/num
        end
      end
    end

    factors.max
  end

  # alternative solution one line solution
  def self.run2 num
    (2..num).select { |i| num % i == 0 and Prime.prime?(i) }.max
  end
end
