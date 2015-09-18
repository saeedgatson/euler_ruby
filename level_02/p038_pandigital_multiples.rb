def get_pandigital(multiplicand)
  number = 1
  check = ""
  smashed = ""
  while check.length < 9 do
    product =  multiplicand * number
    smashed << product.to_s
    check = smashed.split('').sort.join
    if check == "123456789"
      return smashed.to_i
    end
    number += 1
  end
  return 0
end

max = 9999
largest = 1
(1..max).each do |multiplicand|
  #product = multiplicand

  check = get_pandigital(multiplicand)
  if  check > 0
    largest < check ? largest = check  : largest = largest
  elsif check > 99999999
    break
  end
end

puts largest
