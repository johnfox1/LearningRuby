# Repeating the Ch3 Animal Superclass Exercise, without looking, based on the output
# 7th Sept, 2022

# Setting up the Animal SuperClass 
class Animal

  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "Age can't be a negative value"
    end
    @age = value
  end

  def talk(sound)
    puts "#{@name} goes #{sound}."
  end

  def move(destination)
    puts "#{@name} moves to the #{destination}."
  end

  def report_age
    if age == 1
      puts "#{@name} is 1 year old."
    else
      puts "#{@name} is #{@age} years old."
    end
  end  

end

# Setting up the SubClasses
class Dog < Animal
  def to_s
    "#{@name} the dog, age #{@age}."
  end
end

class Bird < Animal
end

class Cat < Animal
end

class Armadillo < Animal
  def move(destination)
    puts "#{@name} unrolls!"
    super
  end
end


# Creating an instance of the Dog class 
lilly = Dog.new
lilly.name = "Lilly"
lilly.age = 11
lilly.talk("Whoof Whoof!")
lilly.report_age
lilly.move("couch")

# Creating an instance of the Bird Class
jerry = Bird.new
jerry.name = "Jerry"
jerry.age = 3
jerry.talk("Chirp Chirp")
jerry.report_age
jerry.move("windowsill")

# Creating an instance of the Cat class 
joe = Cat.new
joe.name = "Joe"
joe.age = 16
joe.talk("Meoow")
joe.report_age
joe.move("the laundry")

# Creating an instance of Armadillo class 
dillon = Armadillo.new
dillon.name = "Dillon"
dillon.age = 5
dillon.move("burrow")
dillon.report_age

# Calling the superclass methods on instances to identify their superclass
puts Dog.superclass
puts Animal.superclass
puts lilly