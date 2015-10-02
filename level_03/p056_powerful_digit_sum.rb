# A googol (10^100) is a massive number: one followed by one-hundred zeros; 100^100 is almost unimaginably large: one followed by two-hundred zeros. Despite their size, the sum of the digits in each number is only 1.
# Considering natural numbers of the form, a^b, where a, b < 100, what is the maximum digital sum?

def sum_digits(num)
   num.to_s.split(//).inject(0) {|sum, n| sum + n.to_i}
end

largest = 0
(1..99).each do |a|
    (1..99).each do |b|
        sum = sum_digits(a ** b)
        largest = sum > largest ? sum : largest
    end
end
puts "Considering natural numbers of the form, a^b, where a, b < 100, what is the maximum digital sum is #{largest}."
