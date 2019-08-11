require "./spec_helper"

describe Staircase do
  it "example tests" do
    Staircase.solution(1).should eq(1)
    Staircase.solution(2).should eq(2)
    Staircase.solution(3).should eq(3)
    Staircase.solution(4).should eq(5)
    Staircase.solution(5).should eq(8)
    Staircase.solution(6).should eq(13)
  end
end
