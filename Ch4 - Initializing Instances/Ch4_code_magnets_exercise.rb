# Ch4 Code Magnets exercise (p145)
# 9th Sept, 2022

# Setting up the Boat SuperClass 
class Boat

  # Initializing the name instance variable
  def initialize(name)
    @name = name
  end  

end


# Setting up the PowerBoat SubClass
class PowerBoat < Boat

  # Initializing the motot_type instance variables
  # Inheriting the initialized name instance variables from the Boat SuperClass using super
  def initialize(name, motor_type)
    super(name)
    @motor_type = motor_type
  end
  
  # Setting up the info method
  def info
    puts "Name: #{@name}"
    puts "Motor Type: #{@motor_type}"
  end

end  


# Sample code:
boat = PowerBoat.new("Guppy", "outboard")
boat.info

# Output:
# Name: Guppy
# Motor Type: outboard