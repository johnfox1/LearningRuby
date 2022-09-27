# Ch8 References - Experimenting with hash default objects 
# 28th Sept, 2022

test_hash = Hash.new(3)
test_hash["key1"] = 5

p test_hash # Expected: {"key1" => 5}
p test_hash["key1"] # Expected: 5
p test_hash["key2"] # Expected: 3
p test_hash.default # Expected: 3

