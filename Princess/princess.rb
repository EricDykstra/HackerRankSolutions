#!/bin/ruby
# Head ends here
def displayPathtoPrincess(m,grid)
    princess_position = []
    my_position = []
    new_grid = grid.map do |x|
        x.split("")
    end
    new_grid.each_with_index do |x,xi|
        x.each_with_index do |y,yi|
            princess_position = [xi,yi]
        end
    end
    my_position = [(m/2), (m/2)]
    if my_position[0] > princess_position[0]
        (my_position[0] - princess_position[0]).times { puts "UP" }
    end
    if my_position[0] < princess_position[0]
        (my_position[0] - princess_position[0]).abs.times { puts "DOWN" }
    end 
    if my_position[1] > princess_position[1]
        (my_position[1] - princess_position[1]).times { puts "LEFT" }
    end
    if my_position[1] < princess_position[1]
        (my_position[1] - princess_position[1]).abs.times { puts "RIGHT" }
    end
end
# Tail starts here
m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
    grid[i] = gets.strip
end

displayPathtoPrincess(m,grid)