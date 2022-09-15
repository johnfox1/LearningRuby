# Attempting to DRY up the invoicing system code with the each method 
# 15th Sept, 2022

# Our prices array
prices = [3.99, 25.00, 8.99]


# Requirement 1 - Given an array of prices, add them together and return the total
# Using the curly brackets syntax in the block
def total(prices)
  amount = 0
  prices.each { |price| amount += price}
  amount
end

puts format("$%0.2f", total(prices))

# Using the do/end syntax in the block  
def total(prices)
  amount = 0
  prices.each do |price|
    amount += price
  end
  amount
end

puts format("$%0.2f", total(prices))


####################
# Requirement 2 - Given an array of prices, subtract each price from the customer account balance
# Using the curly brackets syntax in the block
def refund(prices)
  amount = 0
  prices.each { |price| amount -= price}
  amount
end

puts format("$%0.2f", refund(prices))

# Using the do/end syntax in the block
def refund(prices)
  amount = 0
  prices.each do |price|
    amount -= price
  end
  amount
end

puts format("$%0.2f", refund(prices))


####################
# Requirement 3: Given an array of prices, reduce each item's price by 1/3, and print the savings
# Using the do/each syntax on the block
def show_discounts(prices)
  prices.each do |price|
    discount = price / 3.0
    discount_formatted = format("%0.2f", discount)
    puts "Your discount: $#{discount_formatted}"
  end
end

show_discounts(prices)