# Ch5 Invoicing System - Final code with commentary
# 16th Sept, 2022

# Task requirements:
# Requirement 1: Given an array of prices, add them all together and return the total
# Requirement 2: Given an array of prices, subtract each price from the customers' account balance (refunds)
# Requirmeent 3: Given an array of prices, reduce each item's price by 1/3, and print the savings

# The array of prices, called prices
prices = [3.99, 25.00, 8.99]

# Setting up the method (total) to sum the prices in the array 
# The method takes a parameter, called prices
def total(prices)
  amount = 0 # Setting up a local variable (amount), setting it's initial value at zero (an integer)
  # Setting up a block, invoked on the prices parameter
  # The block takes a parameter, called price (careful with the method and block paramter names, they're similar)
  # The each method is used in the block, which iterates through an array
  prices.each do |price|
    amount += price # Changing the amount variable, adding the array element value to it
  end # End of block, control is passed back to the total method
  amount # Calling the amount variable
end

# Setting up the next method (refund) to subtract each prie from the customer's account balance
# Very similar code to the total method, so won't add full comentary again
def refund(prices)
  amount = 0
  prices.each do |price|
    amount -= price
  end
  amount
end

# Setting up the method to show the discounts (show_discounts)
# This method takes a parameter, called prices
# Similar code to the total method, so only unique code will be commented
def show_discounts(prices)
  prices.each do |price|
    amount_off = price / 3.0 # Setting up a new local variable (amount_off), calculated as the elemnt value divided by 3
    puts format("Your discount: $%0.2f", amount_off) # Printing a string, interpolating the amount_off variable, formatted to 2dp
  end  
end


######################
# Executed code
puts format("$%0.2f", total(prices)) # Print the total method result, formatted to 2dp
puts format("$%0.2f", refund(prices)) # Print the refund method result, formatted to 2dp
show_discounts(prices) # Call the show_discounts method result (don't need to print as it has a print command)
  