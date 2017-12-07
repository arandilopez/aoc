require "./spec_helper"

describe "Day 6" do
  describe "part 1" do
    it "find the bottom programm" do
      input = [
        %{pbga (66)},
        %{xhth (57)},
        %{ebii (61)},
        %{havc (66)},
        %{ktlj (57)},
        %{fwft (72) -> ktlj, cntj, xhth},
        %{qoyq (66)},
        %{padx (45) -> pbga, havc, qoyq},
        %{tknk (41) -> ugml, padx, fwft},
        %{jptl (61)},
        %{ugml (68) -> gyxo, ebii, jptl},
        %{gyxo (61)},
        %{cntj (57)},
      ]

      Aoc::Day7.bottom_program(input.map(&.split)).should eq("tknk")
    end
  end

  describe "part 2" do
    it "message" do

    end
  end
end
