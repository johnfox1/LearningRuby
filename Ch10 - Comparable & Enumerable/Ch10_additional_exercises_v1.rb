# Ch10 - Additional exercises on the HTF website
# 12th Oct, 2022

class Grade
  
  include Comparable
  attr_reader :letter

  def letter=(grade)
    unless grade = "A" || "B" || "C" || "D" || "F"
      raise "Not a valid grade letter"
    end
    @letter = grade
  end

  def initialize(letter)
    self.letter = letter
  end

  def <=>(other)
    if letter > other.letter
      return -1
    elsif letter < other.letter
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

puts "a_grade > c_grade: #{a_grade > c_grade}"   #Expected: "a_grade > c_grade: true"
puts "f_grade < d_grade: #{f_grade < d_grade}"   #Expected: "f_grade < d_grade: true"
puts "b_grade > a_grade: #{b_grade > a_grade}"   #Expected: "b_grade > a_grade: false"
puts "a_grade == a_grade: #{a_grade == a_grade}" #Expected: "a_grade == a_grade: true"  