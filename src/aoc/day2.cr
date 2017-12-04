module Aoc
  module Day2
    extend self
    def checksum(spreadsheet)
      spreadsheet.reduce(0) { |carry, row| carry + (row.max - row.min) }
    end

    def checksum2(spreadsheet)
      spreadsheet.map { |row|
        result = 0
        row.each_permutation(2) { |nums|
          nums.sort!
          result = (nums[1] / nums[0]) if (nums[1].modulo(nums[0]) == 0)
        }
        result
      }.sum
    end
  end
end
