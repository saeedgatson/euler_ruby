def factorial(number)
  (1..number).reduce(1, :*)
end

def sum_factorials(number)
  str = number.to_s
  factorial_sum = 0

  str.each_char do |c|
    factorial_sum += factorial(c.to_i)
  end
  factorial_sum
end

max = factorial(9)*7

sum = 0
(3..max).each do |number|
  sum += number if (number == sum_factorials(number))
end

puts sum
