# Ch3 More Exercises on the HRF website
# 13th Sept, 2022

# Exercise 1 - Square Class
class Rectangle
  attr_reader :width, :height

  def width=(value)
    if value < 0
      raise "Width can't be negative"
    end
    @width = value
  end

  def height=(value)
    if value < 0
      raise "Height can't be negative"
    end
    @height = value
  end

  def area
    width * height
  end
end


class Square < Rectangle

  def width=(value)
    @width = value
    @height = value
  end

  def height=(value)
    @height = value
    @width = value
  end

end

rectangle = Rectangle.new
rectangle.width = 10
rectangle.height = 5
puts rectangle.area

square = Square.new
square.width = 7
puts square.area


# Exercise 2 - Cupcakes
class Confection

  def prepare
    puts "Baking at 350 degress for 25 minutes"
  end

end

class Cupcake < Confection

  def prepare
    super
    puts "Apply Frosting"
  end

end

cupcake = Cupcake.new
cupcake.prepare

