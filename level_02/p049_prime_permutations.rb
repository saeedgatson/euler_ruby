# The arithmetic sequence, 1487, 4817, 8147, in which each of the terms increases by 3330, is unusual in two ways: (i) each of the three terms are prime, and, (ii) each of the 4-digit numbers are permutations of one another.
# There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes, exhibiting this property, but there is one other 4-digit increasing sequence.
# What 12-digit number do you form by concatenating the three terms in this sequence?

require 'mathn'

def unusual?(number)
  check_1 = number + 3330
  check_2 = number + 6660
  return false unless Prime.prime?(check_1) && Prime.prime?(check_2)

  permutation_test = number.to_s.split('').sort.join
  return false unless permutation_test.eql?(check_1.to_s.split('').sort.join) && permutation_test.eql?(check_2.to_s.split('').sort.join)
  return true
end

answer = 0
Prime.each do |prime|
  next if prime.to_s.length < 3
  next if prime == 1487

  if unusual?(prime)
    answer = prime
    break
  end
end

puts "#{answer}#{answer + 3330}#{answer + 6660}"
