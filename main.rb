# Ch6 Collections exercise - Intro to returning values from blocks
# 19th Sept, 2022

# Opening and closing the file using the block method
lines = []
File.open("Ch6_reviews.txt") do |file_as_array|
  lines = file_as_array.readlines
end

# Creating a new array (relevant_lines), filtering the original array(lines) for elements that include the substring "Truncated", and exclude the elemtns that have "--" (the bylines)
relevant_lines = []
relevant_lines = lines.find_all { |line| line.include?("Truncated")}
relevant_lines = lines.reject { |line| line.include?("--")}
p relevant_lines 
