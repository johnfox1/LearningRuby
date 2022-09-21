# Ch6 Collections exercise - Commenting the example code in the tutorial
# 20th Sept, 2022

#############
# Task: Extract the adjectives from a given text file
# Requirement 1: Get the file contents (e.g., open the file)
# Requirement 2: Find reviews for the movie of interest
# Requirement 3: Discard reviewer bylines (the lines in the text file containing --)
# Requirement 4: Find and extract an adjective in each review (the word after "is" in a line)
# Requirement 5: Capitalize each adjective and put it in quotation marks.
# Requirement 6: Print these adjectives.
#############

# Setting up a method to receive a string, split the words and form an array, idntify the index of the word "is", then return the word after "is"
def find_adjective(string) # Defining the method, with string as a parameter
    words = string.split(" ") # Setting up an array (called words) which splits the passed string into individual elements
    index = words.find_index("is") # Identifies the index value of the word "is" in the words array
    words[index + 1] # Returns the array element after the word "is"
end # End of method

# Setting up a block (using do/end syntax) to open a text file, and convert each line into an array element
lines = [] # Setting up an empty array variable (called lines) outside the block. Set up outside, so that it can be used after the block.
File.open("Ch6_reviews.txt") do |review_file| # File.open block opens and closes a file (identified in the parameter)
    lines = review_file.readlines # Block body passes each line of the file into an array element, using the .readlines method
end # End of block

# Coding blocks to filter the lines array to the desired contents
relevant_lines = lines.find_all { |line| line.include?("Truncated") } # Block to filter array elements in the line array to only include those that contain the word "Truncated"
reviews = relevant_lines.reject { |line| line.include?("--") } # Block to filter array elements, to exclude those with "--"

# Using a block body and the map method to create a new array (adjectives), based on an existing array (reviews), which utilises the find_adjectives method to isolate the adjective in the array element
adjectives = reviews.map do |review| 
    adjective = find_adjective(review) # Invokes the find_adjective method
    "'#{adjective.capitalize}'" # Returns the adjective, capitalising the first letter, and putting it in quotation marks
end

puts "The critics agree, Truncated is:"
puts adjectives # Prints the adjectives array