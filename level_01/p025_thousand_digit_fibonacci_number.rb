timer_start = Time.now

number_1 = 1
number_2 = 1
next_number = 0
index = 2
while next_number.to_s.size < 1000
  next_number = number_1 + number_2
  index += 1
  number_1 = number_2
  number_2 = next_number
end


puts "The index of the first term in the Fibonacci sequence to contain 1000 digits is #{index}"
puts "Elapsed Time: #{(Time.now - timer_start)*1.0} seconds"
