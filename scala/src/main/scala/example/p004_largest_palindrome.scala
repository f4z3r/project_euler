package example

object P004 {
  def run(num: Int): Int = {
    val palindromes = for {
      x <- 0 until num
      y <- 0 until num
      if isPalindrome(x * y)
    } yield x * y
    palindromes.max
  }

  private def isPalindrome(num: Int): Boolean = {
    val numString = num.toString
    numString == numString.reverse
  }
}
