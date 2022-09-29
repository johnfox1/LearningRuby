# Ch8 References - Additional exercises on the HFR website
# 30th Sept, 2022

# Original code
staff = ["Walsh", "Monero", "Nash", "Cox", "Rios", "Jones", "Gupta", "Hayes"] # Setting up an array for staff names
softball_team = staff # Aliasing. The softball_team variable is referencing the same object on the heap as staff

staff << "Wagner" # Appending an additional element to the staff array for the new staff member
softball_team << "Zonky the Wonder Squirrel"

puts "Company staff: ", staff
print "\n\n"
puts "Company softball team: ", softball_team
print "\n\n"

# Code to fix the Aliasing
staff = ["Walsh", "Monero", "Nash", "Cox", "Rios", "Jones", "Gupta", "Hayes"]
softball_team = staff.clone # Cloning the staff array

staff << "Wagner"
softball_team << "Zonky the Wonder Squirrel"

puts "Company staff: ", staff
print "\n\n"
puts "Company softball team: ", softball_team
