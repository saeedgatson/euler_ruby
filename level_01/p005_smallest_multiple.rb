# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def digit_division?(number)
  (1..20).each do |n|
    return false unless (number % n).zero?
  end
  return true
end

number = 1
loop do
  break if digit_division?(number) == true
  number += 1
end

puts number
