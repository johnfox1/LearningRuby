# Ch1 - More exercises
# 26th August 2022

################################################
# Exercise 1: Reverse-o-Matic

# Welcome message
print "Hello, what's your name? "
name = gets.chomp
puts "Nice to meet you #{name}."

# Exercise
puts "Describe your favourite meal and accompanying beverage. Press enter when you're finished."
print "Favourite meal: "
favourite_meal = gets.chomp
puts "Thanks for that, that sounds delicious."
puts "Your favourite meal, written in reverse, is written as:"
puts favourite_meal.reverse
################################################


################################################
# Exercise 2: IRB Session

my_string = "ruby is so cool"
puts my_string
# Creates a variable (my_string) and assigns it a string 

puts my_string.methods
# Calls the methods method, looking up available methods on the receiver (the my_string string)

puts my_string.next
# Calls the next method on the my_string string receiver
# I wasn't sure what the next method did until I played around with it in irb
# The next method seems to change the last character in the string to the next letter in the alphabet
# Note, the next methods creates a new string, it doesn't alter the original string

puts my_string.reverse.upcase
# Calling both the reverse and upcase methods on the my_string string receiver
# The reverse method will reverse the string 
# The upcase method will capitalise all letters in the string 
# The combanation of the two methods will mean the receiving string will reverse and capitalise

puts my_string.insert(11, "very, very ")
# Calling the insert method on the my_string string receiver
# Insterts a new string (defined the method argument) at the 11th character of the receiving string
# Note, the insert method changes the original string, rather than creating a new string

puts "Rolling a die... we got #{ rand(1..6) }"
# Prints the string and interpolates the random number method 
# The rand(1..6) method will generate a random integer between 1 and 6

puts "There are #{ 60 * 60} seconds in an hour"
# Prints the string and interpolates the expression inside the #{} 

puts 42.to_s
# Converts the integer 42 to a string and prints it

puts "42".to_i
# Converts the string "42" to an integer and prints it
################################################