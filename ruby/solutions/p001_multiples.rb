#!/usr/bin/env ruby -w

module P001
  def self.run stop
    (1..stop-1).inject(0) { |sum, item| (item % 3 == 0 or item % 5 == 0) ? sum + item : sum }
  end
end
