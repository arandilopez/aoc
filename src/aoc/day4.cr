module Aoc
  module Day4
    extend self
    def valid_passphrases(matrix)
      matrix
      .map { |row| row.split }
      .select { |row|
        copy = row.uniq.compact
        copy == row
      }.size
    end

    def valid_passphrases2(matrix)
      matrix
      .map { |row| row.split }
      .select { |row|
        copy = row.map { |word| word.split("").sort.join("") }.uniq.compact
        copy.size == row.size
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
