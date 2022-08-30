# Ch2 Exercise - The complete Dog Class
# 31st Aug, 2022

class Dog

  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

end

dog = Dog.new
dog.name = "Daisy"
dog.age = 3
dog.report_age
dog.talk
dog.move("bed")

lilly = Dog.new
lilly.name = "Lilly"
lilly.age = 11
lilly.report_age
lilly.talk
lilly.move("couch")

      