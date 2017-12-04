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

test_spreadsheet = [
 [5, 1, 9, 5],
 [7, 5, 3],
 [2, 4, 6, 8]
]
puts Aoc::Day2.checksum(test_spreadsheet)

test_spreadsheet2 = [
  [5, 9, 2, 8],
  [9, 4, 7, 3],
  [3, 8, 6, 5],
]
puts Aoc::Day2.checksum2(test_spreadsheet2)
