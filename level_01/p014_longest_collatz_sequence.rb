longest_chain_term = 10
i = 13
term = 13
count = 0
longest_seq = 0

while term <= 1000000
  while i != 1
    if i.even?
      i = i / 2
    else
      i = 3 * i + 1
    end
    count += 1
  end

  if longest_seq < count
    longest_chain_term = term
    longest_seq = count
  end

  count = 0
  term += 1
  i = term
end

puts "The term with the longest chain is #{longest_chain_term}"
