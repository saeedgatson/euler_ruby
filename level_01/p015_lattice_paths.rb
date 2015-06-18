require 'matrix'

def routes_to_corner(grid_size)
  matrix = Matrix.build(grid_size + 1, grid_size + 1) {|row, col| 1}

  (1..grid_size).each do |row|
    (1..grid_size).each do |col|
      new = matrix[row - 1, col] + matrix[row, col - 1]
      matrix.send(:[]=, row, col, new)
    end
  end
  matrix[grid_size, grid_size]
end

grid_size = 2
puts "There are exactly #{routes_to_corner(grid_size)} routes to the bottom right corner for a #{grid_size}x#{grid_size} grid."

grid_size = 20
puts "There are exactly #{routes_to_corner(grid_size)} routes to the bottom right corner for a #{grid_size}x#{grid_size} grid."
