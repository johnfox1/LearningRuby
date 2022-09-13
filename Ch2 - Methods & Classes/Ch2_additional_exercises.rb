# Ch2 More Exercises on the HRF website
# 13th Sept, 2022

# Exercise 1: HTML Methods
def paragraph(string)
  "<p>#{string}</p>"
end  

def image(img, width = 100, height = 100)
  "<img src='#{img}' width='#{width}' height='#{height}' />"
end  

puts paragraph("Hello my name is John")
puts image("puppy.jpg", 500, 500)


# Exercise 2: Rectangle Class
class Rectangle

  attr_accessor :width, :height

  def area(width, height)
    area = width * height
    puts "The area is #{area}"
  end

end

area_test = Rectangle.new
area_test.area(5, 6)


# Exercise 3: Validation
class Triangle

  attr_reader :base_length, :perpendicular_height

  def base_length=(base_length_value)
    if base_length_value < 0
      raise "base length can't be a negative value"
    end
    @base_length = base_length_value
  end  

  def perpendicular_height=(perpendicular_height_value)
    if perpendicular_height_value < 0
      raise "perpendicular height can't be a negative value"
    end
    @perpendicular_height = perpendicular_height_value
  end  

  def triangle_area
    triangle_area = base_length * perpendicular_height * 0.5
    puts "The area is #{triangle_area}"
  end

end

triangle_area_test = Triangle.new
triangle_area_test.base_length = 7
triangle_area_test.perpendicular_height = -8
triangle_area_test.triangle_area