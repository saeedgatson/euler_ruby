def sum_spiral_diagonals(spiral)
  sum = 1
  stop = (spiral - 1) / 2
  (1..stop).each do |n|
    up_right = ((2 * n) + 1) ** 2
    up_left = up_right - 2 * n
    down_left = up_right - 4 * n
    down_right = up_right - 6 * n
    sum += up_right + up_left + down_left + down_right
  end
  sum
end

puts "Sum of the numbers on the diagonals in a 5 by 5 spiral is #{sum_spiral_diagonals(5)}."
puts "Sum of the numbers on the diagonals in a 1001 by 1001 spiral is #{sum_spiral_diagonals(1001)}."
