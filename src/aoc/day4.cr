module Aoc
  module Day4
    extend self
    def valid_passphrases(matrix)
      matrix.map { |row| row.split }
        .select { |row| row == row.uniq.compact}.size
    end

    def valid_passphrases2(matrix)
      matrix.map { |row| row.split }
        .select { |row|
          row.size == row.map { |word| word.split("").sort.join("") }.uniq.compact.size
        }.size
    end
  end
end

puts Aoc::Day4.valid_passphrases([
  %{aa bb cc dd ee},
  %{aa bb cc dd aa},
  %{aa bb cc dd aaa}
])

puts Aoc::Day4.valid_passphrases2([
  %{abcde fghij},
  %{abcde xyz ecdab},
  %{a ab abc abd abf abj},
  %{iiii oiii ooii oooi oooo},
  %{oiii ioii iioi iiio},
])
