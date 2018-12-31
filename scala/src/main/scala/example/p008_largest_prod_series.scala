package example

object P008 {
  def run(length: Int, num: String): Int = {
    val slidingProduct = num.sliding(length).map(product)
    slidingProduct.max
  }

  private def product(nums: String): Int = {
    nums.map(_.asDigit).product
  }
}
