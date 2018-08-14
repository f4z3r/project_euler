module P006
  def self.run(num)
    sq_sum = (0..num).sum**2
    sum_sq = (0..num).map { |i| i**2 }.sum
    sq_sum - sum_sq
  end
end
