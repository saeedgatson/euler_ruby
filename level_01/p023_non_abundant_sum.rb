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
abundant_array = get_abundant_under(150)
puts abundant_array
abundant_arr = []

for i in 0..abundant_array.length - 1
  j = i + 1
  for j in j..abundant_array.length - 1
    sum = abundant_array[i] + abundant_array[j]
    if sum <= limit
      abundant_arr[sum] = true
    else
      break
    end
  end
end

for i in 0..abundant_array.length - 1
  if abundant_arr[i] != true
    sum += i
  end
end

puts "The sum of all the positive integers which cannot be written as the sum of two abundant numbers is #{sum}."
