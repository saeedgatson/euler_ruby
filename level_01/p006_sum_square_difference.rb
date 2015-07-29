# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_squares(max)
  sum = 0
  0.upto(max) do |number|
    sum += number ** 2
  end
  sum
end

def square_sum(max)
  sum = 0
  0.upto(max) do |number|
    sum += number
  end
  sum ** 2
end

puts "The sum of square difference for first 100 natrual numbers is : #{square_sum(100) - sum_squares(100)}"
