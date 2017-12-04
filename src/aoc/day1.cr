module Aoc
  module Day1
    extend self
    def sum(list)
      list.map_with_index { |e, i| [e, i] }.reduce(0) do |carry, el|
        value, index = el
        carry += value if ( (list[index + 1] rescue nil) == value)
        carry += value if (index == (list.size - 1) ) && value == list.first
        carry
      end
    end

    def sum2(list)
      step = list.size / 2
      list.map_with_index { |e, i| [e, i] }.reduce(0) do |carry, element|
        value, index = element
        carry += value if value == list[index - step]
        carry
      end
    end
  end
end
