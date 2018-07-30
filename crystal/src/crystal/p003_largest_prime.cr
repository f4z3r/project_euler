module P003
  def self.run(num)
    (2..num).select { |i| num % i == 0 && prime?(i) }.max
  end

  def self.prime?(num)
    return false if num <= 1
    return true if num <= 3
    return false if num % 2 == 0 || num % 3 == 0

    i = 5
    while i * i <= num
      return false if num % i == 0 || num % (i + 2) == 0
      i += 6
    end
    return true
  end
end
