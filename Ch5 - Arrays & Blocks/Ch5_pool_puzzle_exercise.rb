# Ch5 Pool Puzzle exercise (p189)
# 16th Sept, 2022

# Setting up a new method (pig_latin), that takes a parameter (words)
def pig_latin(words)

  original_length = 0 #Defining a new loval variable (original_length). Setting initial value as zero.
  new_length = 0 #Defining a new local variable (new_length). Setting initial value as zero.

  # Setting up a block, using the do/end Syntax.
  # The block is invoked on the method paramter (words). In this example, the array my_words is passed in.
  # The block uses the each method, which works through each element in the passed-in array.
  # The block takes a parameter (word). This is a bit confusing, as it's similar to the method parameter name
  words.each do |word|
    puts "Original work: #{word}" # Prints a string, interpolating in the array element
    original_length += word.length # Changing the original_length local variable (set at zero). Adding the length of the array element.
    letters = word.chars # Creating a new variable (letters). This variable is an array, each element is a character from the block parameter array
    first_letter = letters.shift # Creating a new array (first_letter), which removes the first element from the letters array and returng it
    new_word = "#{letters.join}#{first_letter}ay" # Creating a new variable (new_word), a string, which concatenates shown variables
    puts "Pit Latin word: #{new_word}" # Prints a string, interpolating the new_word string
    new_length += new_word.length # Changing the new_length local variable (set at zero), adding the length of the new_word variable string
  end # End of block

  # Still in the pig_latin method
  puts "Total original length: #{original_length}" # Prints a string, interplating the original_length variable (an integer)
  puts "Total Pig Latin length: #{new_length}" # Prints a string, interpolating the new_length variable (an integer)

end

my_words = ["blocks", "totally", "rock"] # Settng up an array 
pig_latin(my_words) # Calling the pig_latin method, with the my_words array as the argument

##################

cities = ["Brisbane", "Melbourne", "Sydney"]
pig_latin(cities)