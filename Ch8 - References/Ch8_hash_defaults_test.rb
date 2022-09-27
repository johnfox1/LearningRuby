# Ch8 References - Experimenting with hash default objects 
# 28th Sept, 2022

test_hash = Hash.new(3)
test_hash["key1"] = 5

p test_hash # Expected: {"key1" => 5}
p test_hash["key1"] # Expected: 5
p test_hash["key2"] # Expected: 3
p test_hash.default # Expected: 3

#######################
# Testing using a block instead of an argument to the hash default
class CelestialBody
  attr_accessor :type, :name
end  


bodies = Hash.new do |hash, key| # Setting up a block (do). Creating a new hash (called bodies). hash and key are the block parameters
  body = CelestialBody.new # Setting up a new object (body), which is an instance of the CelestialBody class
  body.type = "planet" # assigning the instance variable 'type' of the object to the string "planet"
  hash[key] = body # assigning the hash key as the 'body' object just created
  # body # Returns the body object - I've just learned that this isn't required
end

bodies['Mars'].name = 'Mars'
bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon' # Changes the default valye from planet to moon. Already has a key.
bodies['Venus'].name = 'Venus'

p bodies['Mars']
p bodies['Europa']
p bodies['Venus']

