# My first Blocks (Ch5)
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
  
  
  ##############
  # Blocks with parameters
  def method_name_2(&block_name_2)
    puts "We're in method 2, about to invoke the block."
    block_name_2.call("John", "Lilly")
    puts "We're back in method 2."
  end
  
  method_name_2 do |name1, name2|
    puts "We're in the block 2 now. In the room is #{name1} and #{name2}."
  end
  
  
  ##############
  # Using yield instead of method-argument and .call 
  def method_name_3
    puts "We're in method 3, about to invoke the block."
    yield "John", "Lilly"
    puts "We're back in method 3."
  end
  
  method_name_3 do |name1, name2|
    puts "We're in the block 3 now. In the room is #{name1} and #{name2}."
  end
  
  
  # Using curly brackets syntax on the block, instead of do/end
  def method_name_4
    puts "We're in method 4, about to invoke the block."
    yield "John", "Lilly"
    puts "We're back in method 4."
  end
  
  method_name_4 { |name1, name2| puts "We're in the block 4 now. In the room is #{name1} and #{name2}." }
