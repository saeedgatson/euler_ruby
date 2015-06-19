require 'numbers_in_words'
require 'numbers_in_words/duck_punch'

def number_to_word(number)
  word = number.in_words
  word
end

def word_count(num_as_word)
  count = num_as_word.count("^\s")
  count
end

def number_letter_count(start, stop)
  sum = 0
  (start..stop).each do |number|
    word = number_to_word(number)
    sum += word_count(word)
  end
  sum
end

puts "The total sum from 1 to 5 is #{number_letter_count(1, 5)}"
puts "The total sum from 1 to 1000 is #{number_letter_count(1, 1000)}" #21124
