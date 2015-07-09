def palindrome_b10?(number)
  return true if number.to_s == number.to_s.reverse
  return false
end

def palindrome_b02?(number)
  return true if number.to_s(2) == number.to_s(2).reverse
  return false
end

sum = 0
1_000_000.downto(1) do |number|
  sum += number if palindrome_b10?(number) && palindrome_b02?(number)
end

puts "Total sum is #{sum}"
