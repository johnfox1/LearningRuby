# Ch3 Code Magnets Exercise (page 89)
# 5th Sept, 2022

# Setting up the superclass, Camera
class Camera

  def load
    puts "Winding film."
  end

  def take_picture
    puts "Triggering shutter."
  end  

end


# Setting up the subclass, DigitalCamera, which inherits from the Camera class
class DigitalCamera < Camera

  # Overriding the 'load' method from the superclass
  def load
    puts "Inserting memory card."
  end  

  # Don't need a methof for 'take_picture', as it inherits from the superclass
  
end


# Sample code provided:

# Creating an instance (object) 'camera' of the Camera class
camera = Camera.new

# Calling a 'load' method on the camera instance
camera.load

# Calling a 'take_picture' method on the camera instance
camera.take_picture


# Creating another instance (object) 'camera2', this time of the DigitalCamera class 
camera2 = DigitalCamera.new

# Calling the 'load' method again, this time on the camera2 instance
camera2.load

# Calling the 'take_picture' method again, this time on the camera2 instance
camera2.take_picture