# Learning about the each method (Ch5)
# 15th Sept, 2022

# Using the each method, and a block, to process each item in an array 

#Setting up an array, calling it 'array'. This array has 3 simple string elements
array = ["a", "b", "c"]

# Calling the each method to the array object. Note, this is a block (notice the curly brackets syntax)
# Each array element is passed into the block parameter. The block body is printing the parameter
# Hence, simply each paramter will be printed, until we get to the last element of the array
array.each { |par| puts par}


################
# Writing a method that's equivalent to the each method 

class Array
  def each
    index = 0
    while index < self.length
      yield self[index]
      index += 1
    end
  end
end

