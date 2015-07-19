# It was proposed by Christian Goldbach that every odd composite number can be written as the sum of a prime and twice a square.
# 9 = 7 + 2×1^2
# 15 = 7 + 2×2^2
# 21 = 3 + 2×3^2
# 25 = 7 + 2×3^2
# 27 = 19 + 2×2^2
# 33 = 31 + 2×1^2
# It turns out that the conjecture was false.
# What is the smallest odd composite that cannot be written as the sum of a prime and twice a square?

require 'mathn'

def composite?(number)
  return !number.prime? && number != 1
end

def goldbach?(number)
  Prime.each do |prime|
    return false if prime >= number
    check = 1
    itr = 1
    while check <= number
      check = prime + (2 * (itr * itr))
      return true if check == number
      itr += 1
    end
  end
  false
end

answer = 0
odd_number = 1

while answer == 0
  answer = odd_number if composite?(odd_number) && !goldbach?(odd_number)
  odd_number += 2
end

puts "The smallest odd composite that cannot be written as the sum of a prime and twice a square is #{answer}."
