# Ch6 Collections exercise - The map method to create an array based on another array
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

# Creating a method to isolate the word after "is" in a string. 
def find_adjective(string)
    words = string.split(" ")
    index = words.find_index("is")
    words[index + 1]
end

# Using the map method to create a new array (adjectives), with just the adjective from each element in the reviews array
# Using curly bracket syntax in the block
# adjectives = reviews.map { |review| find_adjective(review)}
# p adjectives

# Extending the map method, to capitalize the adjective and put it in quotation marks
# Using the do/end method, since it's going to be more than one line
# Extending the map method, to capitalize the adjective and put it in quotation marks
# Using the do/end method, since it's going to be more than one line
adjectives = reviews.map do |review|
    adjective = find_adjective(review)
    "'#{adjective.capitalize}'"
end
p adjectives
puts adjectives