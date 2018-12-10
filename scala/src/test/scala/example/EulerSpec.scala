package example

import org.scalatest._

class EulerSpec extends FlatSpec with Matchers {
  "Problem 1" should "be solved" in {
    P001.run(10) shouldEqual 23
    P001.run(1000) shouldEqual 233168
  }

  "Problem 2" should "be solved" in {
    P002.run(100) shouldEqual 44
    P002.run(4000000) shouldEqual 4613732
  }
}
