# Ch2 - Code Magnets Exercise (page 51)
# 29th August 2022

# Creating a new class called Blender

class Blender

  # Defining an instance method within the Blender class called close_lid. 
  # Outputs a simple string.
  def close_lid
    puts "Sealed tight!"
  end

  # A second instance method in the Blender class, called blend.
  # This blend instance method has a paramter: speed.
  # Outputs a string with the speed parameter arugment interpolated into the string.
  def blend(speed)
    puts "Spinning on #{speed} setting."
  end
end

# Creating a new variable, blender, with is a new instance (object) of the Blender class
blender = Blender.new

# Calling instance methods from the Blender class on the new blender instance
blender.close_lid
blender.blend("high")
