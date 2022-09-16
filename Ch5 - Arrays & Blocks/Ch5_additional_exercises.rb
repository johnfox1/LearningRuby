# Ch5 More Exercises on the HRF website
# 16th Sept, 2022

# Exercise 1: Converting a String to an Array and back
fruit_string = "boulder, apple, banana, peach, cow"
city_string = "apple, Brisbane, Sydney, Melbourne, Canberra, Banana"

def cleaned_string(original_string)
  puts "Original String: #{original_string}"
  array_1 = original_string.split(", ")
  print "String converted to Array: "
  p array_1
  array_1.pop
  array_2 = array_1
  print "Array after last element discarded: "
  p array_2
  array_2.shift
  array_3 = array_2
  print "Array after first element discarded: "
  p array_3
  new_string = array_3.join(", ")
  puts "New String converted from Array: #{new_string}"
end

cleaned_string(fruit_string)
cleaned_string(city_string)

# Exercise 2: Yielding to a block
def with_these_numbers(num1, num2)
  yield num1, num2
end

with_these_numbers(1, 4) do |first, second|
  puts first + second
end

with_these_numbers(3, 6) do |first, second|
  puts first * second
end

with_these_numbers(12, 3) do |first, second|
  puts first / second
end  
