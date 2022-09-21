# Ch7 Hashes - Intro to hashes
# 22nd Sept, 2022

# Opening a text file and converting each line into an array 
lines = []
File.open("Ch7_votes.txt") do |file|
  lines = file.readlines
end

puts lines

puts lines.count("Brian Martin\n")

#########################
# My first hash (p228)
elements = {"H" => "Hydrogen", "Li" => "Lithium"}
# Hash name = { Key (hash rocket) Value, Key (hash rocket) Value}
puts elements["H"]
puts elements["Li"]

# Adding a new key & value to a hash:
elements["Ne"] = "Neon"

p elements
puts elements.class