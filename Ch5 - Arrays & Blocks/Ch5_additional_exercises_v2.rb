# Ch5 Additional Exercises on the HFR website - Practicing again
# 17th Sept, 2022

# Exercise 2: Yielding to a block

# Setting up the method
def with_these_numbers(num1, num2)
  yield num1, num2
end

# Block 1
with_these_numbers(1, 4) do |first, second|
  puts first + second
end

# Block 2
with_these_numbers(3, 6) do |first, second|
  puts first * second
end

# Block 3
with_these_numbers(12, 3) do |first, second|
  puts first / second
end
