# Practicing the Ch2 exercise without looking, based on the output
# 1st September, 2022

class Dog

  attr_accessor :breed, :sound, :fav_food
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
  
  def information
    puts "This dog's name is #{@name}."
    puts "#{@name} is #{@age} years old."
    puts "#{@name} is a #{@breed}."
    puts "#{@name}'s favourite food is #{@fav_food}."
  end

  def noise
    puts "#{@name} goes #{@sound}."
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end
  
end

lilly = Dog.new
lilly.breed = "Poodle"
lilly.name = "Lilly"
lilly.age = 11
lilly.sound = "Grrrr"
lilly.fav_food = "Pork Belly"

lilly.information
lilly.noise
lilly.move("Couch")