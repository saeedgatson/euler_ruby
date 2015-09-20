# It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits, but in a different order.
# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.

def permuted_multiples?(number)
  check = number.to_s.split('').sort.join
  (2..6).each do |multiple|
    check2 = (multiple * number).to_s.split('').sort.join
    return false unless check == check2
  end
  return true
end

itr = 100000

loop do
  if permuted_multiples?(itr)
    puts "The smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits is #{itr}"
    break;
  end
  itr += 1
end
