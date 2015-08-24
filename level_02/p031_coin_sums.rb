# In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:
# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
# It is possible to make £2 in the following way:
# 1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
# How many different ways can £2 be made using any number of coins?

number = 200
currency = [1, 2, 5, 10, 20, 50, 100, 200]

def count(currency, coins, number)
  return 1 if number == 0 #If number is 0 then there is 1 solution (do not include any coin)
  return 0 if number < 0 #If number is less than 0 then no solution exists
  return 0 if coins <= 0 && number >= 1 #If there are no coins and number is greater than 0, then no solution exist

  return count(currency, coins - 1, number) + count(currency, coins, number - currency[coins-1]);
end

puts count(currency, currency.count, number)
