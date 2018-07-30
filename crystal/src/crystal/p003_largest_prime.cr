module P003
  def self.run(num)
    (2..num).select { |i| num % i == 0 && Crystal.prime?(i) }.max
  end
end
