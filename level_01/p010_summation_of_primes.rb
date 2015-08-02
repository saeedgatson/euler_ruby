require 'mathn'

sum = 0
Prime.each do |prime|
  break if prime > 2_000_000
  sum += prime
end

puts sum
