module Aoc
  module Day5
    extend self
    def steps_to_outside(maze)
      steps = 0
      index = 0
      while index < maze.size
        current = maze[index]
        maze[index] = (current + 1)
        index = (index + current)
        steps += 1
      end
      steps
    end

    def steps_to_outside_2(maze)
      steps = 0
      index = 0
      while index < maze.size
        current = maze[index]
        if (current > 2)
          maze[index] = (current - 1)
        else
          maze[index] = (current + 1)
        end
        index = (index + current)
        steps += 1
      end
      steps
    end
  end
end
