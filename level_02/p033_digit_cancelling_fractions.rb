def curious(numerator, denominator)
  str = numerator + denominator
  str.each_char do |c|
    return c if str.count(c) == 2
  end
end

def remove_and_divide(numerator, denominator, value)
  numerator = numerator.tr(value,"")
  denominator = denominator.tr(value,"")
  numerator.to_i / denominator.to_f
end

def curious_divide(numerator, denominator)
  value = curious(numerator, denominator)
  return remove_and_divide(numerator, denominator, value)
end

denominator_product = 1
numerator_product = 1

(10..98).each do |numerator|
  (numerator + 1..99).each do |denominator|
    next if numerator % 10 == 0 || denominator % 10 == 0
    c1 = numerator / denominator.to_f
    c2 = curious_divide(numerator.to_s, denominator.to_s)
    if c1 == c2
      numerator_product *= numerator
      denominator_product *= denominator
    end
  end
end

puts denominator_product / numerator_product
