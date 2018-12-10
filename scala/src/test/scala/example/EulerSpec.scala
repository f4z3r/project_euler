package example

import org.scalatest._

class EulerSpec extends FlatSpec with Matchers {
  "Problem 1" should "work" in {
    P001.run(10) shouldEqual 23
    P001.run(1000) shouldEqual 233168
  }
}
