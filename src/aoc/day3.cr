module Aoc
  module Day3
    extend self
    def steps_from(address)
      distance = ( (Math.sqrt(address) - 1) / 2 ).ceil
      width = (distance * 2) + 1
      return 0 if distance == 0
      start = ((width - 2) ** 2) + 1
      center = start + ( (width - 3) / 2 ).floor
      offset = (address - center) % (width - 1)
      return (distance + offset).to_i
    end
  end
end
