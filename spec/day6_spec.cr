require "./spec_helper"

describe "Day 6" do

  describe "part 1" do
    it "count reallocations" do
      Aoc::Day6.reallocate([0, 2, 7, 0]).should eq(5)
    end
  end

  describe "part 1" do
    it "count reallocations since first reapeated and seen config" do
      Aoc::Day6.reallocate_2([0, 2, 7, 0]).should eq(4)
    end
  end

end
