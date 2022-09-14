# Ch5 Invoicing System exercise - Going through the tutorial
# 15th Sept, 2022

prices = [3.99, 25.00, 8.99]

# Requirement 1: Given an array of prices, add them all together and return the total
# Setting up a method to keep a running total of the amounts in an array
def total(prices)
  amount = 0.00 # Starting total is zero
  index = 0 # First element is zero
  while index < prices.length # Setting up to loop through the array
    amount += prices[index] # Add the current element price to the total amount
    index += 1 # Adding 1 to the index to progress to the next element
  end
  amount
end
# Printing the total amount in formatted form
puts format("$%.02f", total(prices))

# Requirement 2: Given an array of prices, subtract each price from the customers account balance
# Setting up a method to process refunds
def refund(prices)
  amount = 0
  index = 0
  while index < prices.length
    amount -= prices[index]
    index += 1
  end
amount
end
# Printing the total refund amount, in formatted form
puts format("$%0.2f", refund(prices))

# Requirement 3: Given an array of prices, reduce each item's price by 1/3, and print the savings
# Setting up a method to calculate the discount
def discount(prices)
  index = 0
  while index < prices.length
    discounted_amount = prices[index] * (1/3.0)
    discounted_amount_formatted = format("%0.2f", discounted_amount)
    puts "Your discount: $#{discounted_amount_formatted}"
    index += 1
  end
end
# Printing the discounted amounts for all elements in the array
discount(prices)