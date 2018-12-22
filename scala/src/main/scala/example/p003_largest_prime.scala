package example

object P003 {
  def run(a: Int): Int = {
    primeFactors(a).last
  }

  private def primeFactors(a: Int): List[Int] = {
    val exists = (2 to math.sqrt(a).toInt).find(a % _ == 0)
    exists match {
      case Some(d) => d :: primeFactors(a / d)
      case None    => List(a)
    }
  }
}
