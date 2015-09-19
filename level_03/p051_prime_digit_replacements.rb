# By replacing the 1st digit of the 2-digit number *3, it turns out that six of the nine possible values: 13, 23, 43, 53, 73, and 83, are all prime.
# By replacing the 3rd and 4th digits of 56**3 with the same digit, this 5-digit number is the first example having seven primes among the ten generated numbers, yielding the family: 56003, 56113, 56333, 56443, 56663, 56773, and 56993. Consequently 56003, being the first member of this family, is the smallest prime with this property.
# Find the smallest prime which, by replacing part of the number (not necessarily adjacent digits) with the same digit, is part of an eight prime value family.

require 'mathn'

def prime_fam(prime)

  (0..9).each do |repeating|
    if prime.count(repeating.to_s) >= 3
      ctr = 1

      (repeating + 1..9).each do |replacement|
        candidate = prime.gsub(repeating.to_s, replacement.to_s)
        ctr += 1 if (candidate.to_i).prime?
      end

      return true if ctr >= 8
    end
  end
  return false
end

number = 9999
while number += 2
  next unless number.prime?
  break if prime_fam(number.to_s)
end

puts "The smallest prime which, by replacing part of the number with the same digit, is part of an eight prime value family is #{number}."
