sum = 0
(1..999).each do |k|
  sum += k if k % 3 == 0 or k % 5 == 0
end
puts "The total sum is #{sum}"
