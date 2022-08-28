# Practicing Ch2 worked examples

# Creating the accelerate method (no parameters)
def accelerate
  puts "Stepping on the gass"
  puts "Speeding up"
end

# Creating the sound-horn method (no parameters)
def sound_horn
  puts "Pressing the horn button"
  puts "Beep beep!"
end

# Creating the use_headlights method (brightness as a parameter, with low-beam the optional default)
def use_headlights(brightness = "low-beam")
  puts "Turning on the #{brightness} headlights"
  puts "Watch out for deer!"
end

# Calling the methods (no receiver)
sound_horn
accelerate
use_headlights("High-beam")

# Creating a mileage method with a return value to be used later
def mileage (miles_driven, gas_used)
  return miles_driven / gas_used
end

# Using the mileage method in different calls
trip_mileage = mileage(400,12)
puts "You got #{trip_mileage} PMG on this trip"

lifetime_mileage = mileage(11432, 366)
puts "This car averages #{lifetime_mileage} MPG."



  
  
    
  

