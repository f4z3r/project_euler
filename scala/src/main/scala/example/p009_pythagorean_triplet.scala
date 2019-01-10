package example

object P009 {
  def run(sum: Int): Int = {
    val triplets = for {
      a <- (1 to sum).view
      b <- (a to sum).view
      val c = sum - a - b if isTriplet(a, b, c)
    } yield a * b * c
    triplets.head
  }

  def isTriplet(a: Int, b: Int, c: Int): Boolean = {
    (a*a) + (b*b) == (c*c) && a < b && b < c
  }
}
