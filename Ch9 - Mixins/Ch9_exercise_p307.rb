# Ch9 Mixins - Exercise on page 307

# Code provided in the exercise. Expected result in the comment
puts true || "my"  # true

puts false || "friendship"  # friendship

puts nil || "is"  # is

puts "not" || "often"  # not

first = nil
puts first || "easily"  # easily

second = "earned."
puts second || "purchased"  # earned.

third = false
third ||= true
puts third  # true

fourth = "love"
fourth ||= "praise"
puts fourth  # love

fifth = "takes"
fifth ||= "gives"
puts fifth  # takes

sixth = nil
sixth ||= "work."
puts sixth  # work.