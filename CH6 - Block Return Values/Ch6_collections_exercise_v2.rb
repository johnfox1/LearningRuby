# Ch6 Collections exercise - Returning values from blocks
# 19th Sept, 2022

# Opening and closing the file using the block method
lines = []
File.open("Ch6_reviews.txt") do |file_as_array|
  lines = file_as_array.readlines
end

# Creating a new array (reviews), filtered for elements with the word "Truncated", and excluding elements containing "--"
relevant_lines = []
relevant_lines = lines.find_all { |line| line.include?("Truncated")}
reviews = []
reviews = relevant_lines.reject { |line| line.include?("--")}
puts reviews # This is our filtered array

# Creating a method to isolate the word after "is" in a string. 
def find_adjective(string)
    words = string.split(" ") # Converting a string to an array, with each word in the string it's own element
    index = words.find_index("is") # Identifying the index value of the element "is" in the array
    words[index + 1]  # Calling the array element after the "is" element identified in the line above. Object type is an array element.
end

# Creating a block with the each method, to iterate through an array, executing the find_adjective method defind above
adjectives = [] # Setting up a new blank array
reviews.each do |review| # Setting up the block, with the each method (iterating through each element in the array), with a parameter
  adjectives << find_adjective(review) # Executes the find_adjective method on each element in the reviews array. Adds the result to the adjectives array.
end
p adjectives # prints the adjectives array. It should be an array with the adjective (word after "is") of each element in the filtered reviews array
