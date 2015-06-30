require 'Prime'

answer_a = 0
answer_b = 0
answer_chain = 0

(-1000..1000).each do |a|
  (1..1000).each do |b|
    n = 0
    while Prime.prime?((n * n) + (a * n) + b)
      n += 1
    end

    if n > answer_chain
      answer_chain = n
      answer_a = a
      answer_b = b
    end
  end
end

puts "The product of the coefficients, #{answer_a} and #{answer_b} is #{answer_a * answer_b}, which produces #{answer_chain} primes in a row."
