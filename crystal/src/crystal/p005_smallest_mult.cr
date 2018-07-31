module P005
  def self.run(num)
    guess = 0
    found = false
    while !found
      found = true
      guess += num * (num-1)
      (1...num).each do |i|
        if guess % i != 0
          found = false
          break
        end
      end
    end
    guess
  end
end
