# Ch9 Mixins - My first Module & class mixin
# 4th Oct, 2022

# Setting up the module
module ModuleName

  def first_method
    puts "This is the first method"
  end

  def second_method
    puts "This is the second method"
  end

end

# Setting up the class 
class ClassName
  include ModuleName
end

# Creating an instance of the class
object = ClassName.new

# Calling the instance methods from the module on the new object instance
object.first_method
object.second_method
