package example

object P002 {
  def run(value: Int): Int = {
    from_fib(1, 1).takeWhile(_ <= value).filter(_ % 2 == 0).sum
  }

  def from_fib(a: Int, b: Int): Stream[Int] = {
    a #:: from_fib(b, a + b)
  }
}
