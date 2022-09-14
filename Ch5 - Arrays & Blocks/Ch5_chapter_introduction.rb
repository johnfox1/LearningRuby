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

##################################

# Ch5 Arrays and Blocks - Introduction Continued
# 15th Sept, 2022

# Example array
prices = [2.99, 25.00, 8.99]

# Looping through the array
index = 0
while index < prices.length
  puts prices[index]
  index += 1
end

# Commentary of looping through an array
index = 0 #Starting at index 0 (i.e. the first element in the array).
while index < prices.length #Setting up a while loop. Looping until the index number is equal to the number of elements in the array.
  puts prices[index] #Printing the element at the current index value in the loop
  index += 1 #Adding one to the index value, in order to progress through the array
end