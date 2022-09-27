# Ch8 Aliases - Exercise on p263
# 27th Sept, 2022

# Provided Ruby class:
class Counter

  def initialize # initializing the count instance variable, at a value of zero
    @count = 0
  end

  def increment # Setting up an instance method, called increment 
    @count += 1 # If the instance method is run, the #count instance variable adds 1
    puts @count # After adding 1, the count value is printed
  end

end


# Provided code:
a = Counter.new # Creates a new variable (a), which references a new object instance (located on the heap), based on the Counter class
b = Counter.new # Creates another new variable (b), which references a different new object instance 
c = b # a new variable (c), which is an alias of the variable (b). Both reference the object created when initialized in the line above.
d = c # another new variable (d), which is an alias of (c), and therefore an alias of (b)

a.increment
# Expected: 1

b.increment
# Expected: 1

c.increment
# Expected: 2 (since c is an alias of b)

d.increment
# Expected: 3 (since c is also an alias of b)
