module P002
  def self.run(stop)
    Crystal.fib(stop) { |item| item % 2 == 0 ? item : 0}.sum
  end
end
