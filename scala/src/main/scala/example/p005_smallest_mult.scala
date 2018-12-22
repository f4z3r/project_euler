package example

object P005 {
  def run(num: Int): Int = {
    (1 to num).foldLeft(1)(lcm)
  }

  private def gcd(a: Int, b: Int): Int = {
    if(b == 0) a else gcd(b, a % b)
  }

  private def lcm(a: Int, b: Int): Int = {
    (a * b) / gcd(a, b)
  }
}
