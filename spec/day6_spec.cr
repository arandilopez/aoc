require "./spec_helper"

describe "Day 6" do

  describe "part 1" do
    Aoc::Day6.reallocate([0, 2, 7, 0]).should eq(5)
  end

  describe "part 1" do
    Aoc::Day6.reallocate_2([0, 2, 7, 0]).should eq(4)
  end

end
