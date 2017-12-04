require "./spec_helper"

describe "Day 3" do
  describe "part 1" do
    it "computes how many steps take from address to origin" do
      Aoc::Day3.steps_from(1).should eq(0)
      Aoc::Day3.steps_from(12).should eq(3)
      Aoc::Day3.steps_from(23).should eq(2)
      Aoc::Day3.steps_from(1024).should eq(31)
    end
  end
end
