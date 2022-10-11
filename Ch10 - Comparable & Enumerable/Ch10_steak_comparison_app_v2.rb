# Ch10 Comparable & Enumerable - Steak comparison progragm v2
# 11th Oct, 2022
# Pulling the steak grade hash out of the method and into a constant

# Setting up a class for Steak
class Steak

  STEAK_GRADE = {
      "Prime" => 3,
      "Choice" => 2,
      "Select" => 1
    }
  
  attr_accessor :grade
  

  def > (other)
    STEAK_GRADE[grade] > STEAK_GRADE[other.grade]
  end

end

first_steak = Steak.new
first_steak.grade = "Prime"
second_steak = Steak.new
second_steak.grade = "Choice"

if first_steak > second_steak
  puts "I'll take #{first_steak.inspect}"
end  