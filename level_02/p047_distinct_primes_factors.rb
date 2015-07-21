# The first two consecutive numbers to have two distinct prime factors are:
# 14 = 2 × 7
# 15 = 3 × 5
# The first three consecutive numbers to have three distinct prime factors are:
# 644 = 2² × 7 × 23
# 645 = 3 × 5 × 43
# 646 = 2 × 17 × 19.
# Find the first four consecutive integers to have four distinct prime factors. What is the first of these numbers?

require 'mathn'

itr = 1
count = 0

while count != 4
  if Prime.prime_division(itr).count != 4
    count = 0
  else
    count += 1
  end
  itr += 1
end

puts "The first number of four consecutive integers to have four distinct prime factors is #{itr - 4}."
