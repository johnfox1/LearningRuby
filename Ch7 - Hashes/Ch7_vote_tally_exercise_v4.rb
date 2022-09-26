# Ch7 Hashes - Vote Tally exercise continued
# 26th Sept, 2022

# Opening a text file and converting each line into an array 
lines = []
File.open("Ch7_votes.txt") do |file|
  lines = file.readlines
end

# Cleaning up this vote tally code by setting the hash default to zero
votes = Hash.new(0)
lines.each do |line|
  name = line.chomp
  name.upcase!
  votes[name] += 1
end  

# Adding a block to print the votes tally
votes.each do |name, votes|
  puts "#{name}: #{votes}"
end  

# Setting up a class to create candidate objects - information about the candidtates
class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize (name, age:, occupation: "Not listed", hobby: "Not listed", birthplace:)
    self.name = name 
    self.age = age 
    self.occupation = occupation 
    self.hobby = hobby
    self.birthplace = birthplace
  end

  def candidate_information
    puts "Candidate Information:"
    puts "Name: #{name}"
    puts "Age: #{age}"
    puts "Occupation: #{occupation}"
    puts "Hobby: #{hobby}"
    puts "Birthplace: #{birthplace}"
  end  
end

lilly_peek = Candidate.new("Lilly Peek", age: 11, hobby: "Snoozing", birthplace: "Bundaberg")
lilly_peek.candidate_information
