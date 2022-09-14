# Attemping the Ch5 invoicing exercise prior to going through the tutorial
# 15th Sept, 2022

prices = [2.99, 25.00, 8.99]
total_amount = 0.00
customer_account_balance = 50

# Requirement 1: Given an array of prices, add them all together and return the total
index = 0
while index < prices.length
  total_amount = total_amount + prices[index]  
  index += 1
end  
puts "Total amount: $#{total_amount.round(2)}"

# Requirement 2: Given an array of prices, subtract each price from the customer's account balance
puts "Starting account balance: $#{customer_account_balance}"
index = 0
while index < prices.length
  customer_account_balance = customer_account_balance - prices[index]
  puts "Item number #{index + 1} price: $#{prices[index]}"
  puts "New account balance: $#{customer_account_balance.round(2)}"
  index += 1
end

# Requirement 3: Given an array of proces, reduce each item's price by 1/3, and print the savings
index = 0
while index < prices.length
  puts "Item number #{index + 1}:"
  puts " -> Original Price: $#{prices[index]}"
  puts " -> Reduced Price: $#{(prices[index] * (2.0/3.0)).round(2)}"
  puts " -> Total Savings: $#{(prices[index] * (1.0/3.0)).round(2)}"
  puts "\r\n"
  index += 1
end