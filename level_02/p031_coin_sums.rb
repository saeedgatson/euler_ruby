number = 200
currency = [1, 2, 5, 10, 20, 50, 100, 200]

def count(currency, coins, number)
  return 1 if number == 0 #If number is 0 then there is 1 solution (do not include any coin)
  return 0 if number < 0 #If number is less than 0 then no solution exists
  return 0 if coins <= 0 && number >= 1 #If there are no coins and number is greater than 0, then no solution exist

  return count(currency, coins - 1, number) + count(currency, coins, number - currency[coins-1]);
end

puts count(currency, currency.count, number)
