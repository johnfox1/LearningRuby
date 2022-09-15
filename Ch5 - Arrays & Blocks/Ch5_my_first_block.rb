# My first Block (p169)
# 15th Sept, 2022

# Setting up a method that takes the block (called method_name)
# This method (method_name) has a parameter -> the block (block_name)
def method_name(&block_name)
  puts "We're in the method, about to invoke the block" #Part of method body
  block_name.call #The 'call' method calls the block
  puts "We're back in the method" #Part of method body
end #End of method

# Setting up the block
# A block always follows a method call
method_name do #method_name' makes a call to the method_name method. 'Do' is the start of the block
  puts "We're in the block" # Block body
end #End of block
# After the block runs, the control returns to the method that invoked it
