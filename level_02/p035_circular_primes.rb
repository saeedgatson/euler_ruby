require 'Prime'

def circular?(number)
  array = number.to_s.chars
  array.length.times do |n|
    return false if !Prime.prime?(array.rotate(n).join.to_i)
  end
  return true
end

def circular_prime_count(max)
  count = 0
  (0..max).each do |number|
    num_str = number.to_s
    next if !Prime.prime?(number)
    count += 1 if circular?(number)
  end
  count
end

puts "Number of circular primes below one hundred is #{circular_prime_count(100)}"
puts "Number of circular primes below one million is #{circular_prime_count(1_000_000)}"
