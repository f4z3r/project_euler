#!/usr/bin/env ruby -w

def p001 stop
  (1..stop-1).inject(0) { |sum, item| (item % 3 == 0 or item % 5 == 0) ? sum + item : sum }
end
