module P004
  def self.run(start, stop)
    max_pal = 0
    (start..stop).each do |i|
      (start..stop).each do |j|
        test_num = i * j
        max_pal = test_num if palindrome?(test_num) && test_num > max_pal
      end
    end
    max_pal
  end

  def self.palindrome?(num)
    num_str = num.to_s
    num_digits = num_str.size
    (0...num_digits/2+1).each do |idx|
      return false if num_str[idx] != num_str[num_digits - 1 - idx]
    end
    true
  end
end
