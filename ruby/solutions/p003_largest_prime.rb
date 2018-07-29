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
end
