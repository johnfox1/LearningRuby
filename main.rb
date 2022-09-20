# Ch6 Additional exercises on the HFR website
# 20th Sept, 2022

######## My Code ########
# Exercise 1: Using a block return value in a method
array = [1, 2, 3, 4, 5]

def bar_chart(array)
    array.each do |value|
      yield value
    end
end

puts "Multiplication: "
bar_chart(array) do |number|
  multiplier = number * 3
  puts "$"*multiplier
end  

puts "Division: "
bar_chart(array) do |number|
  multiplier = 20 / number
  puts "$"*multiplier
end  
######## My Code ########


######## Example Code ########
array = [1, 2, 3, 4, 5]

def bar_chart(array)
    array.each do |value|
      puts "$" * yield(value)
    end
end

puts "Multiplication: "
bar_chart(array) { |number| 3 * number }

puts "Division: "
bar_chart(array) { |number| 20.0 / number}
######## Example Code ########