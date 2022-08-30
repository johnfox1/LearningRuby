# Annotating the Ch2 exercise
# 31st Aug, 2022

# Setting up a new class, named Dog, to create Dog instances (objects)
class Dog

  # Setting up two attribute reader methods; name and age
  # Attribute reader methods are a type of instance method
  # Calling these methods (e.g. name) will allow us to read the object's @name instance variables from outside the object
  attr_reader :name, :age

  # Setting up an attribute writer method for the @name instance variable
  # Attribute writer method allows us to write to the @name instance variable from outside the object (a window into the object)
  # Note, name= is the syntax for an attribute writer method
  # Also includes data validation using the raise command (stops the program if the data validation step is triggered)
  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  # Setting up another attribute writer method for @age
  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  # Setting up an ordinary instance method (not an accessor) for move
  # The method prints a string with a parameter interpolated in
  # The string also interpolates in the @name instance variable
  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  # Setting up another instance method, talk
  def talk
    puts "#{@name} says Bark!"
  end

  # Setting up another instance method, report_age
  def report_age
    puts "#{@name} is #{@age} years old."
  end

# End of the class
end

# Now to use this Dog class to create a new instance (object) of the Class
lilly = Dog.new

# Initializing the name and age attributes (instance variables)
lilly.name = "Lilly"
lilly.age = 11

# Now calling 3 instance methods on the lilly instance
# Looking at the code above, this will print out 3 strings with instance variables interpolated in. Interestingly, these instance variables (name and age) have just been set (from outside the instance), using attribute accessors
lilly.report_age
lilly.talk
lilly.move("couch")

  