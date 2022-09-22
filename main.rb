# Ch7 Hashes - Intro to hashes
# 22nd Sept, 2022

# Opening a text file and converting each line into an array 
lines = []
File.open("Ch7_votes.txt") do |file|
  lines = file.readlines
end
# p lines

# Setting up a hash to tally the votes
votes = {} # Setting up an empty hash in preparation
lines.each do |line| # Setting up a block to iterate through the lines array elements
  name = line.chomp # Defining a variable (name), to be associated with each array element
  if votes[name] != nil # if the name (the hash key) is not nil (i.e., it's already in the hash)
    votes[name] += 1 # add 1 to it's value
  else # else (i.e, the hash key is nil)
    votes[name] = 1 # set the value against that hash key at 1
  end
end

p votes

# Cleaning up this conditional to be default truthy (rather than having a nil falsy)
votes = {}
lines.each do |line|
  name = line.chomp
  if votes[name] # truthy conditional: testing to see if the hash key exists. If it doesn't, go to the else
    votes[name] += 1
  else
    votes[name] = 1
  end
end
