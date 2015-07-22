# The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.
# Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.

series = 0
(1..1000).each do |number|
  series += number ** number
end

puts series % 10000000000
