module Aoc
  module Day4
    extend self
    def valid_passphrases(matrix)
      matrix
      .map { |row| row.split }
      .reduce([] of Array(String)) { |carry, row|
        copy = row.uniq.compact
        carry << copy if copy == row
        carry
      }.compact.size
    end
  end
end

puts Aoc::Day4.valid_passphrases([
  %{aa bb cc dd ee},
  %{aa bb cc dd aa},
  %{aa bb cc dd aaa}
])
