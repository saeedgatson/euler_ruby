timer_start = Time.now

def proper_divisors_sum(number)
  return 0 if number == 1
  sum = 1
  sqrt = Math.sqrt(number)

  (2..sqrt).each do |i|
    if number % i == 0
      sum += number / i if i != sqrt
      sum += i
    end
  end
  sum
end

def abundant?(number)
  number < proper_divisors_sum(number)
end

def abundant_under(limit)
  (1..limit).find_all { |num| abundant?(num) }
end

limit = 28123
sum = 0
abundant_array = abundant_under(limit)
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
