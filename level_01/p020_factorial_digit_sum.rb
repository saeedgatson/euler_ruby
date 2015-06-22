def sum_digits(number)
   number.to_s.split(//).inject(0) {|sum, n| sum + n.to_i}
end

def factorial(number)
  (1..number).inject(:*) || 1
end

number = 100
puts "The factorial of #{number} is #{factorial(number)}"
puts "The sum of digits in the factorial of #{number} is #{sum_digits(factorial(number))}"
