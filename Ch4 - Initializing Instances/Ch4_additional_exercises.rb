# Ch4 More Exercises on the HRF website
# 13th Sept, 2022

# Exercise 1 - Initializing rectangles
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

  def initialize(width, height)
    self.width = width
    self.height = height
  end
  
  def area
    width * height
  end
end

rectangle = Rectangle.new(2, 4)
puts rectangle.area
