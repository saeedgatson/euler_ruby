require 'mathn'

def truncatable_prime?(number)
  array_left = number.to_s.chars
  array_right = number.to_s.chars
  array_left.length.times do
    return false unless array_left.join.to_i.prime?
    return false unless array_right.join.to_i.prime?
    array_left.shift
    array_right.pop
  end
  return true
end

sum = 0
count = 0
Prime.each { |num|
  next if num < 10
  if truncatable_prime?(num)
    sum += num
    count += 1
  end
  break if count >= 11
}

puts "The sum of the eleven truncatable primes is #{sum}."
