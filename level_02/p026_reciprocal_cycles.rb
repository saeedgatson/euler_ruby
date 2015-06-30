longest_cycle = 1
longest_number = 1

(1..1000).reverse_each do |index|
  if longest_cycle >= index
    break
  end

  found = Array.new(index, 0)
  value = 1
  position = 0

  while found[value] == 0 && value != 0 do
    found[value] = position
    value *= 10
    value %= index
    position += 1
  end

  if position - found[value] > longest_cycle
    longest_cycle = position - found[value]
    longest_number = index
  end
end

puts "The longest recurring cycle length is #{longest_cycle}, given by the number #{longest_number}"
