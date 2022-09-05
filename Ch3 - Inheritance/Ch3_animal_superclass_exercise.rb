# Ch3 - Converting the Dog class to an Animal superclass
# 5th Sept, 2022

# Setting up the Animal superclass
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

  def report_age
    puts "#{@name} is #{@age} years old."
  end

  def talk(sound)
    puts "#{@name} goes #{sound}."
  end

  def move(destination)
    puts "#{@name} moves to #{destination}."
  end  

end

# Setting up the various animal subclasses
class Dog < Animal
end

class Bird < Animal
end

class Cat < Animal
end

class Armadillo < Animal
  # Setting up an overridding method for move
  def move(destination)
    puts "#{@name} unrolls!"
    super
  end
end  


# Running some methods on the instances
lilly = Dog.new
lilly.name = "Lilly"
lilly.age = 11
lilly.talk("Whoof Whoof!")
lilly.report_age
lilly.move("couch")

jerry = Bird.new
jerry.name = "Jerry"
jerry.age = 3
jerry.talk("Chirp Chirp")
jerry.report_age
jerry.move("windowsill")

joe = Cat.new
joe.name = "Joe"
joe.age = 16
joe.talk("Meeoooowww")
joe.report_age
joe.move("the laundry")

dillon = Armadillo.new
dillon.name = "Dillon"
dillon.age = 5
dillon.move("burrow")
dillon.report_age
