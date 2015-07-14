require 'mathn'

def pandigital?(number)
  check = number.to_s.split('').sort.join
  return true if "1234567" == check
  return false
end


largest = 1
Prime.each { |num|
  next if num < 10
  if pandigital?(num)
    num > largest ? largest = num : largest = largest
  end
  break if num >= 7654321
}

puts largest
