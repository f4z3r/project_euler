package example

object P003 {
  def run(a: Int): Int = {
    primeFactors(a).max
  }

  private def primeFactors(a: Int): List[Int] = {
    val exists = (2 to a).find(a % _ == 0)
    exists match {
      case Some(d) => d :: primeFactors(a / d)
      case None    => List(a)
    }
  }
}
