require 'set'
distinct_products = Set.new

def pandigital?(multiplicand, multiplier)
  product = multiplicand * multiplier
  smashed = multiplicand.to_s + multiplier.to_s + product.to_s
  check = smashed.split('').sort.join
  check.length == 9  && check == "123456789"
end

max = 9999

(1..max).each do |multiplicand|
  (multiplicand + 1..max).each do |multiplier|
    product = multiplicand * multiplier
    if pandigital?(multiplicand, multiplier)
      distinct_products.add(multiplicand * multiplier)
    elsif product > 99999999
      break
    end
  end
end

puts "Answer is #{distinct_products.inject(:+)}" # answer - 45228
