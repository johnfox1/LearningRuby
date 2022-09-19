# Ch6 Collections exercise - Re-writing based on requirements & output
# 20th Sept, 2022

#############
# Task: Extract the adjectives from a given text file (name: "Ch6_reviews.txt")
# Requirement 1: Get the file contents (e.g., open the file)
# Requirement 2: Find reviews for the movie of interest (name: "Truncated")
# Requirement 3: Discard reviewer bylines (the lines in the text file containing --)
# Requirement 4: Find and extract an adjective in each review (the word after "is" in a line)
# Requirement 5: Capitalize each adjective and put it in quotation marks.
# Requirement 6: Print these adjectives.
#############

# Requirement 1: Get the file contents (e.g., open the file)
reviews_text_file = File.open("Ch6_reviews.txt")
reviews_array = reviews_text_file.readlines
# p reviews_array

# Requirement 2: Find reviews for the movie of interest (name: "Truncated")
reviews_array_incl_movie = reviews_array.find_all { |movie| movie.include?("Truncated")}
# p reviews_array_incl_movie

# Requirement 3: Discard reviewer bylines (the lines in the text file containing --)
reviews_array_incl_movie_exl_byline = reviews_array_incl_movie.reject { |movie| movie.include?("--")}
# p reviews_array_incl_movie_exl_byline

# Requirement 4: Find and extract an adjective in each review (the word after "is" in a line)
extract_adjective = reviews_array_incl_movie_exl_byline.map do |review|
    words = review.split(" ")
    index = words.find_index("is")
    words[index + 1]
end
# p extract_adjective

# Requirement 5: Capitalize each adjective and put it in quotation marks
adjectives_formatted = extract_adjective.map do |adjective|
    "'#{adjective.capitalize}'"
end
# p adjectives_formatted    

# Requirement 6: Print these adjectives
puts "Movie critics have described Truncated as: "
puts adjectives_formatted


# Closing the reviews text file
reviews_text_file.close 