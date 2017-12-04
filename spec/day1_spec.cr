require "./spec_helper"

describe "Day 1" do
  describe "part 1" do
    it "should sum list" do
      Aoc::Day1.sum( "1122".split("").map(&.to_i) ).should eq(3)
      Aoc::Day1.sum( "1234".split("").map(&.to_i) ).should eq(0)
      Aoc::Day1.sum( "1111".split("").map(&.to_i) ).should eq(4)
    end
  end

  describe "part 2" do
    it "message" do
      Aoc::Day1.sum2( "1212".split("").map(&.to_i) ).should eq(6)
      Aoc::Day1.sum2( "1221".split("").map(&.to_i) ).should eq(0)
      Aoc::Day1.sum2( "123425".split("").map(&.to_i) ).should eq(4)
      Aoc::Day1.sum2( "123123".split("").map(&.to_i) ).should eq(12)
      Aoc::Day1.sum2( "12131415".split("").map(&.to_i) ).should eq(4)
    end
  end
end
