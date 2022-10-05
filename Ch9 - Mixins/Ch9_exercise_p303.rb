# Ch9 Mixins - Exercise on page 303
# 5th Oct, 2022

# Code provided
module JetPropelled  # Module, to be mixed into a class
  def move(destination)
    puts "Flying to the #{destination}"
  end
end  

class Robot
  def move(destination)
    puts "Walking to the #{destination}"
  end
end

class TankBot < Robot  # Subclass of the Robot class
  include JetPropelled  # Mixing in the JetPropelled module
  def move(destination)
    puts "Rolling to the #{destination}"
  end
end

class HoverBot < Robot  # Subclass of the Robot class
  include JetPropelled  # Mixing in the JetPropelled module
end

class FarmerBot < Robot  # Subclass of the Robot class
end

# Code to be executed
TankBot.new.move("hanger")  # Expected: Rolling to the hanger
HoverBot.new.move("lab")  # Expected: Flying to the lab
FarmerBot.new.move("field")  # Expected: Walking to the field


# Ancestral Heiracy:
# Superclass
# Module
# Subclass