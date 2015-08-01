# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a2 + b2 = c2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2
# There exists exactly one Pythagorean triplet for which a + b + c = 1000
# Find the product abc

def pythagorean?(a, b, c)
  return true if ((a * a) + (b * b)) == c * c
  return false
end

max = 1000

product = 0
(1..max).each do |a|
  (a+1..max).each do |b|
    c = 1000 - a - b
    if pythagorean?(a, b, c)
      product = a * b * c
      break
    end
  end
end

puts "There exists exactly one Pythagorean triplet for which a + b + c = 1000. The product abc is #{product}."
