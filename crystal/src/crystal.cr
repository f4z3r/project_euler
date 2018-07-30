require "./crystal/*"

module Crystal
  # function computing if the argument is a prime number.
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

  # function returning fibonacci numbers
  def self.fib(stop=-1)
    fib_prev = 0
    fib_curr = 1

    result = [] of Int32

    while stop < 0 || fib_curr < stop
      result << yield fib_curr
      fib_prev, fib_curr = fib_curr, fib_prev + fib_curr
    end

    result
  end
end
