include Math

def alphabet_hash()
  char = "a"
  letter_hash = {char => 1}
  (2..26).each do |number|
    char = char.next
    letter_hash.store(char, number)
  end
  letter_hash
end

def get_triangle(number)
  (sqrt(8 * number + 1) - 1) / 2
end

def word_value(name)
  sum = 0
  lcase_name = name.downcase
  alpha_key = alphabet_hash
  lcase_name.each_char do |char|
    sum += alpha_key[char]
  end
  sum
end

def triangle?(number)
  return (get_triangle(number) % 1).zero?
end

words_array = []

File.foreach( 'p042_words.txt' ) do |line|
  words_array = line.tr('"', '').split(",").collect(&:strip)
end

count = 0
words_array.each do |word|
  value = word_value(word)
  count += 1 if triangle?(value)
end

puts "There are #{count} triangle words in the file."
