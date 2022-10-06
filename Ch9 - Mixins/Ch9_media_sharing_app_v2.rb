# Ch9 Mixins - Media Sharing App completed code with comments

# Setting up a module to hold methods (behaviour) involved accepting/ storing comments. To be mixed into subclasses.
module AcceptsComments  # Setting up the module name
  def comments  # Setting up a method that views the comments
    @comments ||= [] # if there are comments, then return comments. If there no comment, create an empty array
  end
  def add_comments(comment)  # Setting up a method to add comments. The comment to be the method argument.
    comments << comment  # Append the comment (in the argument) to the comments array
  end
end

# Setting up a superclass to hold a method relevant to more than one subclass
class Clip  # Setting up the class name
  def play  # Setting up a method
    puts "Playing #{object_id}..."
  end
end

# Setting up a subclass for Video media types
class Video < Clip  # Setting up the class name. Video is a subclass of the Clip superclass
  include AcceptsComments  # Mixing in the AcceptsComments module, and it's methods
  attr_accessor :resolution  # Setting up an instance variable for video resolution. Created using an attribute accessor method, to access the instance variable from outside the class.
end  

# Setting up a subclass for Song media types
class Song < Clip  # Setting up the class name. Song is a subclass of the Clip superclass
  include AcceptsComments  # Mixing in the AcceptsComments module, and it's methods
  attr_accessor :beats_per_minute  # Setting up an instance variable for beats per minute of the song. Created using an attribute accessor method, to access the instance variable from outside the class.
end

# Setting up a Photo class. Not a subclass of Clip, as it photo's don't require 'play' behaviour
class Photo
  include AcceptsComments  # Mixing in the AcceptsComments module, and it's methods
  def initialize  # Creating a default value for the format instance variable. Will be JPEG unless defined otherwise
    @format = 'JPEG'
  end
end

# Code to be executed
video = Video.new  # Creating a new instance of the Video class. Will inherit methods from AcceptsComments and Clip
video.add_comments("Cool slow motion effect!")  # Adding a comment to the comments array associated with this object
video.add_comments("Weird ending.")  # Adding another comment to this array (see line above)
song = Song.new  # Creating a new instance of the Song class. Will inherit methods from AcceptsComments and Clip
song.add_comments("Awesome beat.")  # Adding a comment to the comments array associated with this object
photo = Photo.new  # Creating a new instance of the Photo class. Will inherit methods from AcceptsComments (but not clip)
photo.add_comments("Beautiful colours")  # Adding a comment to the comments array associated with this object

p video.comments  # Inspecting the comments associated with the video object
p song.comments  # Inspecting the comments associated with the song object
p photo.comments  # Inspecting the comments associated with the photo object


    