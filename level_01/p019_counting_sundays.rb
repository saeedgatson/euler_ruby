require 'date'

puts Date.new(1901, 1, 1).step(Date.new(2000, 12, 31)).select{ |date| date.sunday? && date.mday == 1 }.size
