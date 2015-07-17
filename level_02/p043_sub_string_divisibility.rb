def interesting?(number)
  return false unless (number[1,3].to_i % 2).zero?
  return false unless (number[2,3].to_i % 3).zero?
  return false unless (number[3,3].to_i % 5).zero?
  return false unless (number[4,3].to_i % 7).zero?
  return false unless (number[5,3].to_i % 11).zero?
  return false unless (number[6,3].to_i % 13).zero?
  return false unless (number[7,3].to_i % 17).zero?
  return true
end

digits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
permutations = digits.permutation(digits.length).map(&:join)

sum = 0
permutations.each do |number|
  sum += number.to_i if interesting?(number)
end

puts "The sum of all 0 to 9 pandigital numbers with an interesting property is #{sum}."
