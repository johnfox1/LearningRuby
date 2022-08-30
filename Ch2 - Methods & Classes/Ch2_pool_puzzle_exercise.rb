# Ch2 - Pool Puzzle Exercise (page 67)
# 30th August 2022

# Creating a class called Robot
class Robot

  # Creating an accessor reader method called head
  def head
    @head
  end

  # Creating an accessor writer method called arms
  def arms=(value)
    @arms = value
  end

  # Creating 2 accessor reader methods (legs & body) using the shorthand notation
  attr_reader :legs, :body

  # Creating an accessor writer method (eyes) using the shorthand notation
  attr_writer :eyes

  # Creating another accessor writer method (feet) using the shorthand notation
  attr_accessor :feet

  # Creating an instance method (assemble) with 3 instance variables
  def assemble
    # Setting these 3 instance variables (starting with @) as Strings
    @legs = "RubyTek Walkers"
    @body = "BurlyBot Frame"
    @head = "SuperAI 9000"
  end

  # Creating another instance method (diagnostic), this time with 2 method statements
  def diagnostic
    # Printing the Strings of the instance variables
    puts @arms
    puts @eyes
  end

end

# Creating a new object (robot) from the Robot Class
robot = Robot.new

# Applying the assemble instance method (from the Robot Class) to the robot object
# This gives the robot object the 3 instance variables (legs, body, head) and their corresponding strings
# Nothing is printed at this stage
robot.assemble

# Writing values to the arms, eyes and feet instance variables for the robot object
# Nothing is printed yet
robot.arms = "MagGrip Claws"
robot.eyes = "X-Ray Scopes"
robot.feet = "MagGrip Boots"

# Printing the strings associated with the head, legs and body instance variables 
puts robot.head
puts robot.legs
puts robot.body

# Printing the string associated with the feet instance variable
puts robot.feet

# Applying the diagnostic instance method to the robot object 
# The result will be the string of the arms and eyes instance variables will be printed
robot.diagnostic

  