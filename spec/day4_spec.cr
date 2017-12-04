require "./spec_helper"

describe "Day 4" do
  describe "part 1" do
    it "validate passphrases" do
      Aoc::Day4.valid_passphrases([
        %{aa bb cc dd ee},
        %{aa bb cc dd aa},
        %{aa bb cc dd aaa}
      ]).should eq(2)
    end
  end

  describe "part 2" do
    it "validate passphrases again" do
      Aoc::Day4.valid_passphrases2([
        %{abcde fghij},
        %{abcde xyz ecdab},
        %{a ab abc abd abf abj},
        %{iiii oiii ooii oooi oooo},
        %{oiii ioii iioi iiio},
      ]).should eq(3)
    end
  end
end
