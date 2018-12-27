package example

object P007 {
  def run(value: Int): Int = {
    primes.drop(value - 1).next
  }

  private def primes = Iterator.iterate(2)(nextPrimeFrom)

  private def nextPrimeFrom(value: Int): Int = {
    Iterator.from(value + 1).find(isPrime).get
  }

  private def isPrime(value: Int): Boolean = {
    !(2 to Math.sqrt(value).toInt).exists(value % _ == 0)
  }
}
