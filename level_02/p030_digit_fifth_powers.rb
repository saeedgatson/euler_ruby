def sum_digits(number, power)
   number.to_s.split(//).inject(0) {|sum, n| sum + (n.to_i ** power)}
end

stop = 9 ** 5 * 5
answer = 0
(2..stop).each do |number|
  sum = sum_digits(number, 5)
  if number == sum
    answer += number
  end
end

puts "The sum of all the numbers that can be written as the sum of fifth powers of their digits is #{answer}"
