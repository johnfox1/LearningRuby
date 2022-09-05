# Ch3 Robot exercise (page 99)
# 5th Sept, 2022

# Setting up the Robot superclass
class Robot

  attr_accessor :name

  def activate
    puts "#{@name} is powering up"
  end

  def move(destination)
    puts "#{@name} walks to #{destination}"
  end

end

# Setting up the TankBot subclass
class TankBot < Robot

  attr_accessor :weapon

  def attack
    puts "#{@name} fires #{@weapon}"
  end

  def move(destination)
    puts "#{@name} rolls to #{destination}"
  end

end

# Setting up the SolarBot subclass
class SolarBot < Robot

  def activate
    puts "#{@name} deploys solar panel"
    super
  end

end


# Running code
tank = TankBot.new
tank.name = "Hugo"
tank.weapon = "laser"
tank.activate
tank.move("test dummy")
tank.attack

sunny = SolarBot.new
sunny.name = "Sunny"
sunny.activate
sunny.move("tanning bed")
