def fib(number)
  return 0 if number.zero?
  return 1 if number == 1
  return fib(number - 1) + fib(number - 2)
end

sum = 0
(0..4000000).each do |number|
  sum += number if fib(number).even?
end

puts sum
