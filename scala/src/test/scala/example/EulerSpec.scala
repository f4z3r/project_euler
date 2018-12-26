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

  "Problem 3" should "be solved" in {
    P003.run(13195) shouldEqual 29
  }

  "Problem 4" should "be solved" in {
    P004.run(100) shouldEqual 9009
  }

  "Problem 5" should "be solved" in {
    P005.run(10) shouldEqual 2520
  }

  "Problem 6" should "be solved" in {
    P006.run(10) shouldEqual 2640
  }
}
