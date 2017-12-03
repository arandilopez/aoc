module Aoc
  module Day2
    extend self
    def checksum(spreadsheet)
      spreadsheet.reduce(0) { |carry, row| carry + (row.max - row.min) }
    end
  end
end

test_spreadsheet = [
 [5, 1, 9, 5],
 [7, 5, 3],
 [2, 4, 6, 8]
]

puts Aoc::Day2.checksum(test_spreadsheet)
