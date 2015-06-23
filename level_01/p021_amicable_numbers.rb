def proper_divisors(number)
  divisor_array = []
  (1..number.pred).each do |num|
    if number % num == 0
      divisor_array.push(num)
    end
  end
  divisor_array
end

def get_sum(array)
  array.inject(:+)
end

def is_amicable(number_a)
  sum_a = get_sum(proper_divisors(number_a))
  number_b = get_sum(proper_divisors(sum_a))
  if  number_a == number_b && sum_a != number_b
    true
  else
    false
  end
end

number = 10000
sum = 0
(2..number).each do |num|
  check = is_amicable(num)
  if check
    sum += num
  end
end

puts "The sum of all amicable numbers uner #{number} is #{sum}"
