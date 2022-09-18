# Ch6 Collections exercise - Introduction to Opening and Closing Files 
# 19th Sept, 2022

# Setting a variable object (review_file) and opening the revew.txt file using the .open method 
review_file = File.open("Ch6_reviews.txt")

# Using the readlines method to return all the lines in the file as an array 
lines = review_file.readlines
puts "Line 4: #{lines[4]}"
puts "Line 8: #{lines[7]}"

# Closing the File
review_file.close

# Opening and closing files using blocks
File.open("Ch6_reviews.txt") do |review_file|
  lines = review_file.readlines #specific task that the block performs
end

# Being aware of Blocks and Variable scope
lines = [] # Setting up the variable prior to the block, so that it can be used after the block 
File.open("Ch6_reviews.txt") do |file_as_array|
  lines = file_as_array.readlines
end
puts lines.length