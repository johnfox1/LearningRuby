# Ch4 Pool Puzzle exercise (p127)
# 9th Sept, 2022

# Setting up the Car class
class Car

  # Initializing the 
  def initialize(engine)
    @engine = engine
  end

  # Setting up a rev_engine method.
  # The rev_engine method calls the make_sound method on the @engine instance variable
  def rev_engine
    @engine.make_sound
  end

end

# Setting up the Engine class
class Engine

  # Initializing a value for the @sound instance variable in the Engine class
  # Setting the @sound instance variable to have an optional default value of 
  def initialize(sound = "Vroom!!")
    @sound = sound 
  end

  # Setting up a make_sound method
  # This method prints the @sound instance variable
  def make_sound
    puts @sound
  end

end

##########################

# Code that's run:

# Creating an instance of the Engine class (called engine)
engine = Engine.new

# Creating an instance of the Car class. 
# The engine object (just created) is interpolated into the car object as the initialized @engine instance variable
car = Car.new(engine)

# Calling the rev_engine on the car object 
# The rev_engine mathod calls the make_sound method on the @engine instance variable
# The make_sound method prints @sound (which was set as "Vroom!!")
car.rev_engine

##########################

# Output: Vroom!!

  
    
  
