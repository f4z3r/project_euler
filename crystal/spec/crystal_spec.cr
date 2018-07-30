require "./spec_helper"

describe Crystal do
  it "solution 001 works" do
    P001.run(10).should eq(23)
  end

  it "solution 002 works" do
    P002.run(100).should eq(44)
  end

  it "solution 003 works" do
    P003.run(13195).should eq(29)
  end
end
