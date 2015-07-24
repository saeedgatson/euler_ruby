# The prime 41, can be written as the sum of six consecutive primes: 41 = 2 + 3 + 5 + 7 + 11 + 13
# This is the longest sum of consecutive primes that adds to a prime below one-hundred.
# The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.
# Which prime, below one-million, can be written as the sum of the most consecutive primes?

require 'mathn'
#543
#997651

max = 1000000
primeSums = []

Prime.each do |prime|
  break if prime > max
  primeSums << prime
end

max_consecutive = 0
sum = 0
ctr = 0
answer = 0
upper = primeSums.length - 1

(0..upper).each do |start|
  sum = primeSums[start]
  ctr = 1

  (start+1..upper).each do |stop|
    sum += primeSums[stop]
    break if sum > max

    ctr += 1
    next if ctr < max_consecutive

    if sum.prime? && ctr > max_consecutive
      max_consecutive = ctr
      answer = sum
    end
  end
end

puts "The max consecutive primes is #{max_consecutive}"
puts "For the number #{answer}"
