def get_name_worth(name)
  lcase_name = name.downcase
  sum = 0
  alpha_key = get_alpha_hash
  lcase_name.each_char do |char|
    sum += alpha_key[char]
  end
  sum
end

def get_alpha_hash()
  char = "a"
  letter_hash = {char => 1}
  (2..26).each do |number|
    char = char.next
    letter_hash.store(char, number)
  end
  letter_hash
end

def get_name_score(worth, rank)
  worth * rank
end

names_array = []

File.foreach( 'p022_names.txt' ) do |line|
  names_array = line.tr('"', '').split(",").collect(&:strip)
end

total = 0
rank = 1
sorted_names = names_array.sort

sorted_names.each do |name|
  worth = get_name_worth(name)
  score = get_name_score(worth, rank)
  total += score
  rank += 1
end

puts "The total of all the name scores is #{total}"
