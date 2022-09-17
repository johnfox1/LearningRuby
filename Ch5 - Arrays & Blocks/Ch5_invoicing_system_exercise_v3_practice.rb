# Ch5 Invoiving System - re-cording, without looking, given requirements
# 17th Sept, 2022

# Requirements:
# 1: Given an array of prices, add them together and return the total
# 2: Given an array of prices, reduce each item's price by 1/3, and print the savings

# Array provided
prices = [3.99, 25.00, 8.99]

# Code to be executed:
# puts format("$%0.2f", total(prices))
# show_discounts(prices)

# Output:
# $37.98
# Your discount: $1.33
# Your discount: $8.33
# Your discount: $3.00

# Requirement 1
def total(prices)
  amount = 0
  prices.each do |price|
    amount += price
  end
  amount
end

puts format("$%0.2f", total(prices))

# Requirement 2
def show_discounts(prices)
  prices.each do|price|
    discount = format("$%0.2f", price / 3.0)
    puts "Your discount: #{discount}"
  end
end

show_discounts(prices)