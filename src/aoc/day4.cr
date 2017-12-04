module Aoc
  module Day4
    extend self
    def valid_passphrases(matrix)
      matrix.map { |row| row.split }
        .select { |row| row == row.uniq.compact }.size
    end

    def valid_passphrases2(matrix)
      matrix.map { |row| row.split }
        .select { |row|
          row.size == row.map { |word| word.split("").sort.join("") }.uniq.compact.size
        }.size
    end
  end
end
