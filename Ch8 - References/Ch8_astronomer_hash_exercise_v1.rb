# Ch8 References - Astronomers hash exercise
# 28th Sept, 2022

# Setting up a class for a new Celestial Body object
class CelestialBody
  attr_accessor :type, :name
end

# Setting up a new hash (called 'bodies') to store the Celestial Body information (name & type)
# Using a block to set the default hash value (the type of celestial body) as a 'planet'
bodies = Hash.new do |hash, key|
  body = CelestialBody.new
  body.type = "planet"
  hash[key] = body # sets the default hash value for unassigned keys
end  

# Code to create new CelestialBody objects
bodies['Mars'].name = 'Mars' # a new objects with name 'Mars'. Will receive default type of 'planet'
bodies['Europa'].name = 'Europa' # same as above
bodies['Europa'].type = 'moon' # assigns a value to the Europa key. Will override the defualt.
bodies['Venus'].name = 'Venus' # same as line 1

p bodies # inspects the bodies has. Should have 3 objects, with Europa the only object with 'moon' as it's value