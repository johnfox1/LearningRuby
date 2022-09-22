# Ch7 Hashes - Vote Tally exercise
# 22nd Sept, 2022

# Opening a text file and converting each line into an array 
lines = []
File.open("Ch7_votes.txt") do |file|
  lines = file.readlines
end

# Setting up a hash to tally the votes
votes = {}
lines.each do |line|
  name = line.chomp
  if votes[name] # truthy conditional: testing to see if the hash key exists. If it doesn't, go to the else
    votes[name] += 1
  else
    votes[name] = 1
  end
end
p votes