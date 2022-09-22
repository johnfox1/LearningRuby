# Ch7 Hashes - Vote Tally exercise
# 22nd Sept, 2022

# Opening a text file and converting each line into an array 
lines = []
File.open("Ch7_votes.txt") do |file|
  lines = file.readlines
end

# Cleaning up this vote tally code by setting the hash default to zero
votes = Hash.new(0)
lines.each do |line|
  name = line.chomp
  name.upcase! # changes the name to all upper case prior to setting it as a has key
  votes[name] += 1
end  
p votes

# Adding a block to print the votes tally
votes.each do |name, votes|
  puts "#{name}: #{votes}"
end  