require "./spec_helper"

describe "Day 2" do
  describe "part 1" do
    it "calculate checksum" do
      test_spreadsheet = [
       [5, 1, 9, 5],
       [7, 5, 3],
       [2, 4, 6, 8]
      ]
      Aoc::Day2.checksum(test_spreadsheet).should eq(18)
    end
  end

  describe "part 2" do
    it "calculate checksum again" do
      test_spreadsheet2 = [
        [5, 9, 2, 8],
        [9, 4, 7, 3],
        [3, 8, 6, 5],
      ]
      Aoc::Day2.checksum2(test_spreadsheet2).should eq(9)
    end
  end
end
