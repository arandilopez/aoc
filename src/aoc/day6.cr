module Aoc
  module Day6
    extend self
    def reallocate(banks)
      cycles = 0
      seen = [] of Array(Int32)
      until seen.includes? banks
        seen.push banks.dup
        max = banks.max
        index = banks.index(max) || -9999
        return 0 if index == -9999
        banks[index] = 0
        while max != 0
          index = (index + 1) % banks.size
          banks[index] = (banks[index] + 1)
          max -= 1
        end
        cycles += 1
      end
      return cycles
    end
  end
end
