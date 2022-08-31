 # Cleaning up my extension of the Ch2 exercise
# 31st Aug, 2022

# Setting up a class to create dog objects
class Dog

  attr_accessor :breed, :fav_food, :sound
  attr_reader :name, :age, :breed_avg_lifespan

  def name=(value)
    if value == ""
      raise "Name can't be blank"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid"
    end
    @age = value
  end

  def breed_avg_lifespan=(value)
    if value < 3
      raise "An average lifespan of less than 3 isn't valid"
    end  
    @breed_avg_lifespan = value
  end  

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def talk
    puts "#{@name} says #{@sound}"
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end
  
  def report_breed
    puts "#{@name} is a #{@breed}. #{@breed}'s have an average lifepsan of #{@breed_avg_lifespan} years."
  end  

  def report_fav_food
    puts "#{@name}'s favourite food is #{@fav_food}."
  end  

end


# Creating a new dog object, lilly, from the Dog class
lilly = Dog.new
lilly.name = "Lilly"
lilly.age = 11
lilly.sound = "Grrrrr"
lilly.fav_food = "Pork Belly"
lilly.breed = "Poodle"
lilly.breed_avg_lifespan = 18

# Outputting information about the lilly object 
puts "This dog's name is #{lilly.name}."
lilly.report_age
lilly.talk
lilly.move("couch")
lilly.report_breed
lilly.report_fav_food


# Creating another new dog object, Charlie, from the Dog class 
charlie = Dog.new
charlie.name = "Charlie"
charlie.age = 8
charlie.sound = "Whoof!"
charlie.fav_food = "Steak"
charlie.breed = "Cavalier"
charlie.breed_avg_lifespan = 12

# Outputting information about the charlie object 
puts "This dog's name is #{charlie.name}."
charlie.report_age
charlie.talk
charlie.move("behind the tv")
charlie.report_breed
charlie.report_fav_food