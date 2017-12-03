module Aoc
  module Day1
    extend self
    def find_sum(list)
      sum = 0
      prev = nil
      list.each_with_index do |num, index|
        prev = num if prev.nil?
        next if index == 0
        sum += num if prev == num
        prev = num
      end
      if list.first == list.last
        sum += list.first
      end
      return sum
    end
  end
end

puts Aoc::Day1.find_sum( "1122".split("").map(&.to_i) )
puts Aoc::Day1.find_sum( "1234".split("").map(&.to_i) )
puts Aoc::Day1.find_sum( "1111".split("").map(&.to_i) )
