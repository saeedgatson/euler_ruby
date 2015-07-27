# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(number)
  num_str = number.to_s
  return true if num_str == num_str.reverse
  return false
end

largest, max = 1, 999

(0..max).each do |a|
  (0..max).each do |b|
      product = a * b
      if palindrome?(product)
        largest = product if product > largest
      end
  end
end

puts "Largest palindrome product for 3-digits is : #{largest}."
