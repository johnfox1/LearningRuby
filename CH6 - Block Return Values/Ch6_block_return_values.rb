# Ch6 Collections exercise - Intro to returning values from blocks
# 19th Sept, 2022

# Opening and closing the file using the block method
lines = []
File.open("Ch6_reviews.txt") do |file_as_array|
  lines = file_as_array.readlines
end

# Creating a new array (reviews), filtered for elements with the word "Truncated", and excluding elements containing "--"
relevant_lines = []
relevant_lines = lines.find_all { |line| line.include?("Truncated")}
reviews = relevant_lines.reject { |line| line.include?("--")}

# Creating a method to convert array elements to strings, then calling the word after "is"
def find_adjective(string)
    words = string.split(" ")
    index = words.find_index("is")
    words[index + 1]
end

# Creating a block with the each method, to iterate through an array, executing the find_adjective method 
adjectives = []
reviews.each do |review|
  adjectives << find_adjective(review)
end
p adjectives
