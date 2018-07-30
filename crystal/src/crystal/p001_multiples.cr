module P001
  def self.run(stop)
    (1...stop).each.reduce(0) { |sum, item| (item % 3 == 0 || item % 5 == 0) ? sum + item : sum }
  end
end
