decimal = ""
(1..1000000).each do |num|
  decimal << num.to_s
end

puts decimal[0].to_i * decimal[9].to_i * decimal[99].to_i * decimal[999].to_i * decimal[9999].to_i * decimal[99999].to_i * decimal[999999].to_i
