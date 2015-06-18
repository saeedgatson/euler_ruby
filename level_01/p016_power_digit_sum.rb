def sum_digits(num)
   num.to_s.split(//).inject(0) {|sum, n| sum + n.to_i}
end

num = 15
puts "The sum of the digits of the number 2^#{num} is #{sum_digits(2 ** num)}"

num = 1000
puts "The sum of the digits of the number 2^#{num} is #{sum_digits(2 ** num)}"
