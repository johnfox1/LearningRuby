# Ch3 inheritance example - Vehicles
# 5th Sept, 2022

# The Vehicle class will be the superclass
# The Car, Truct and Motocycle classes will be the subclasses

class Vehicle

  attr_accessor :odometer, :gas_used

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep! Beep!"
  end

  def steer 
    puts "Turn front 2 wheels."
  end

  def mileage
    return @odometer / @gas_used
  end

end

# Read as "Car class inherits from the Vehicle class"
class Car < Vehicle
end

class Truck < Vehicle

  attr_accessor :cargo

  def load_bed(contents)
    puts "Securing #{contents} in the truck bed."
    @cargo = contents
  end
  
end

class Motorcycle < Vehicle

  # Overriding the steer method from the superclass
  def steer
    puts "Turn front wheel."
  end
  
end

truck = Truck.new
truck.load_bed("259 bouncy balls")
puts "The truck is carrying #{truck.cargo}."
truck.odometer = 11432
truck.gas_used = 366
print "Average MPG: "
puts truck.mileage
truck.accelerate
truck.steer

car = Car.new
car.odometer = 11432
car.gas_used = 366

print "Lifetime MPG:"
puts car.mileage

motorcycle = Motorcycle.new
motorcycle.odometer = 22914
motorcycle.gas_used = 728
motorcycle.steer
