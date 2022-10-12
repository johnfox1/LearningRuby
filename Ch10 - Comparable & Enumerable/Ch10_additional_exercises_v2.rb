# Ch10 - Additional exercises on the HTF website v1
# 12th Oct, 2022

class Grade
  include Comparable
  VALID_LETTERS = ["A", "B", "C", "D", "F"]

  def letter
    @letter
  end

  def letter=(value)
    unless VALID_LETTERS.include?(value)
      raise "Not a valid grade letter"
    end  
    @letter = value
  end

  def initialize(letter)
    self.letter = letter
  end

  def <=>(comparison)
    if letter > comparison.letter
      return -1
    elsif letter < comparison.letter
      return 1
    else
      return 0
    end
  end  

end


a_grade = Grade.new("A")
b_grade = Grade.new("B")
c_grade = Grade.new("C")
d_grade = Grade.new("D")
f_grade = Grade.new("F")

puts "a_grade > c_grade: #{a_grade > c_grade}"
puts "f_grade < d_grade: #{f_grade < d_grade}"
puts "b_grade > a_grade: #{b_grade > a_grade}"
puts "a_grade == a_grade: #{a_grade == a_grade}"