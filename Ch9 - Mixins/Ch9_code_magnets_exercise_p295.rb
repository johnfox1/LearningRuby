# Ch9 Mixins - Code magnets exercise on page 295
# 4th Oct, 2022

# First module
module Curious
  def investigate(thing)
    puts "Looks at #{thing}"
  end  
end

# Second module
module Clumsy
  def break(thing)
    puts "Knocks over #{thing}"
  end  
end

# Class
class Monkey
  include Curious
  include Clumsy
end

# Creating an instance of the class
bubbles = Monkey.new

# Calling methods from the module on the new object
bubbles.investigate("vase")
bubbles.break("vase")
  