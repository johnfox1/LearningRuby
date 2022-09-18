# Ch6 Exercise (p199)
# 19th Sept, 2022

############
# Script 1
def yield_number # setting up a method called yield_number
    yield 4 # yielding to a block, passing 4 as an argument 
  end
  
# blank line
array = [1, 2, 3]
  
yield_number { |number| array << number} # the block, << means add to the end of the array
p array # show the array

# output: [1, 2, 3, 4]


############
# Script 2
# blank line
sum = 0

[1, 2, 3].each { |number| sum += number}
puts sum

# output: 6


############
# Script 3
# blank line
# A text file, with 3 lines, as per the output

File.open("sample.txt") do |file|
    content = file.readlines
end

puts contents

# output:
# This is the first line in the file.
# This is the second.
# This is the last line.