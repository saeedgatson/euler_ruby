timer_start = Time.now

digits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
position = 1000000
permutations = digits.permutation(digits.length).map(&:join).sort
puts "The #{position} permutation is #{permutations.at(position - 1)}"

puts "Elapsed Time: #{(Time.now - timer_start)*1.0} seconds"
