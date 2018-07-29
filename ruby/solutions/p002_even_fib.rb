#!/usr/bin/env ruby -w

module P002
  def self.run stop
    prev, fib_num = 0, 1
    sum = 0

    while fib_num < stop
      sum += fib_num if fib_num % 2 == 0
      prev, fib_num = fib(prev, fib_num)
    end

    sum
  end

  def self.fib num1, num2
    return num2, num1 + num2
  end
end
