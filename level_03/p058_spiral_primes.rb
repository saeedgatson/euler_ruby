# Starting with 1 and spiralling anticlockwise in the following way, a square spiral with side length 7 is formed.
#
# 37 36 35 34 33 32 31
# 38 17 16 15 14 13 30
# 39 18  5  4  3 12 29
# 40 19  6  1  2 11 28
# 41 20  7  8  9 10 27
# 42 21 22 23 24 25 26
# 43 44 45 46 47 48 49
#
# It is interesting to note that the odd squares lie along the bottom right diagonal, but what is more interesting is that 8 out of the 13 numbers lying along both diagonals are prime; that is, a ratio of 8/13 ≈ 62%.
#
# If one complete new layer is wrapped around the spiral above, a square spiral with side length 9 will be formed. If this process is continued, what is the side length of the square spiral for which the ratio of primes along both diagonals first falls below 10%?

require 'mathn'

n = 3
sides = 7
total_numbers = 12
total_primes = 8

loop do
  down_right = ((2 * n) + 1) ** 2
  total_primes += 1 if down_right.prime?

  down_left = down_right - 2 * n
  total_primes += 1 if down_left.prime?

  up_left = down_right - 4 * n
  total_primes += 1 if up_left.prime?

  up_right = down_right - 6 * n
  total_primes += 1 if up_right.prime?

  total_primes += 4

  if total_primes.to_f / total_numbers > 0.1
    n += 1
    puts "Precentage is #{total_primes.to_f / total_numbers}."
  else
    sides = (n * 2) + 1
    break
  end
end

puts sides
