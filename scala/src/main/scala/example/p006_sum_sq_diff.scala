package example

object P006 {
  def run(value: Int): Int = {
    val sq_sum = Math.pow((0 to value).sum, 2).toInt
    val sum_sq = (0 to value).map(Math.pow(_, 2).toInt).sum
    sq_sum - sum_sq
  }
}
