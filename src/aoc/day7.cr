module Aoc
  module Day7
    extend self
    def bottom_program(list)
      list = list.select { |row| row.size > 3 }
      nodes = list.map { |row| row[0] }.to_set
      children = list.map { |row| row[3..(row.size-1)].map(&.delete ',') }.flatten.to_set
      nodes.select { |node| ! (children.includes? node) }.first
    end
  end
end
