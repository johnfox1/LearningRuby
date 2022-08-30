# Creating a new class called Mage
class Mage

  # Creating accessor methods with two instance variables; name and spell
  attr_accessor :name, :spell

  # Creating a new method called enchant with a parameter (target)
  def enchant(target)
    # In this method, a string is printed
    # The name and spell instance variables are interpolated in
    puts "#{@name} casts #{@spell} on #{target.name}!"
  end

end
