require "./spec_helper"

describe Crystal do
  it "solution 001 works" do
    P001.run(10).should eq(23)
    P001.run(1_000).should eq(233_168)
  end

  it "solution 002 works" do
    P002.run(100).should eq(44)
    P002.run(4_000_000).should eq(4_613_732)
  end

  it "solution 003 works" do
    P003.run(13_195).should eq(29)
    # P003.run(600_851_475_143).should eq(6_857)
  end

  it "solution 004 works" do
    P004.run(10, 100).should eq(9_009)
    P004.run(100, 1_000).should eq(906_609)
  end

  it "solution 005 works" do
    P005.run(10).should eq(2_520)
    P005.run(20).should eq(232_792_560)
  end

  it "solution 006 works" do
    P006.run(10).should eq(2640)
    P006.run(100).should eq(25_164_150)
  end
end
