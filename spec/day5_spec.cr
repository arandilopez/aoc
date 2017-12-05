require "./spec_helper"

describe "Day 5" do
  describe "part 1" do
    it "count steps to outside the maze" do
      maze = [0, 3, 0, 1, -3]
      Aoc::Day5.steps_to_outside(maze).should eq(5)
    end
  end

  describe "part 2" do
    it "count steps to outside the maze in a stranger way" do
      maze = [0, 3, 0, 1, -3]
      Aoc::Day5.steps_to_outside_2(maze).should eq(10)
    end
  end
end
