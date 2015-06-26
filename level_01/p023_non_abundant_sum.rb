timer_start = Time.now

def proper_divisors(number)
  divisor_array = []
  (1..number.pred).each do |num|
    if number % num == 0
      divisor_array.push(num)
    end
  end
  divisor_array
end

def is_abundant(number)
  divisor_array = proper_divisors(number)
  total = divisor_array.inject(:+)
  if number < total
    true
  else
    false
  end
end

def get_abundant_under(number)
  abundant_array = []
  (2..number.pred).each do |num|
    if(is_abundant(num))
      abundant_array.push(num)
    end
  end
  abundant_array
end

limit = 28123
sum = 0
abundant_array = get_abundant_under(limit)
abundant_sums = []

abundant_array.each do |i|
  abundant_array.each do |j|
    sum = i + j
    break if sum > limit
    abundant_sums.push(sum)
  end
end

not_abundant_sums = (1..limit).to_a - abundant_sums
puts "The sum of all the positive integers which cannot be written as the sum of two abundant numbers is #{not_abundant_sums.inject(:+)}."
puts "Elapsed Time: #{(Time.now - timer_start)*1.0} seconds"
