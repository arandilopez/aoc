module Aoc
  module Day6
    extend self
    def reallocate(banks)
      cycles = 0
      seen = [] of Array(Int32)
      until seen.includes? banks
        seen << banks.dup
        max = banks.max
        index = banks.index(max) || -9999 # << index returns (In32|Nil), only Int needed
        banks[index] = 0
        while max != 0
          index = (index + 1) % banks.size
          banks[index] += 1
          max -= 1
        end
        cycles += 1
      end
      return cycles
    end

    def reallocate_2(banks)
      cycles = 0
      seen = [] of Array(Int32)
      until seen.includes? banks
        seen << banks.dup
        max = banks.max
        index = banks.index(max) || -9999
        banks[index] = 0
        while max != 0
          index = (index + 1) % banks.size
          banks[index] += 1
          max -= 1
        end
        cycles += 1
      end
      return cycles - (seen.index(banks) || 0)
    end
  end
end
