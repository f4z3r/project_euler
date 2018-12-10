package example

object P001 {
  def run(value: Int): Int = {
    (0 until value).filter(n => n % 3 == 0 || n % 5 == 0).sum
  }
}
