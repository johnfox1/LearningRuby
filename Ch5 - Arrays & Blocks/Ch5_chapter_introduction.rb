# Ch5 Arrays and Blocks - Introduction
# 14th Sept, 2022

# Example array
prices = [2.99, 25.00, 9.99]

# Retrieving items from the array
puts prices[0] #the first left hand item
puts prices[1]
puts prices[2]

# Adding an item to the Array
prices[3] = 3.99

# Retrieving this new item
puts prices[3]

# Viewing the items in an array, in array form
p prices

# Adding another new item, with a gap in the Array 
prices[5] = 6.99

# Viewing the items in the Array 
p prices

# Finding out the class of object of an array 
puts prices.class
puts prices.methods