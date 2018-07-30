require "./spec_helper"

describe Crystal do
  it "problem 001 works" do
    P001.run(10).should eq(23)
  end
end
