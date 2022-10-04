# Ch9 Mixins - Media Sharing App v1, using modules as mixins
# 5th Oct, 2022

# Creating a module to contain the methods to accept comments
module AcceptsComments

  def comments
    if @comments
      @comments
    else
      @comments = []
    end
  end

  def add_comment(comment)
    comments << comment
  end

end

# Creating a superclass for clips
class Clip
  def play
    puts "Playing #{object_id}..."
  end
end

# Creating subclasses for Videos & Songs
class Video < Clip
  include AcceptsComments  # Mixing in the AcceptsComments module
  attr_accessor :resolution
end

class Song < Clip
  include AcceptsComments
  attr_accessor :beats_per_minute
end

# Creating a subclass for Photos
class Photo
  include AcceptsComments  # Mixing in the AcceptsComments module
  def show
    puts "Displaying #{object_id}"
  end
end

# Code to be executed
video = Video.new  # A new object instance of the Video class
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending")
song = Song.new
song.add_comment("Awesome Beat")

p video.comments, song.comments

video.play
song.play

photo = Photo.new
photo.add_comment("Beautiful colors...")
p photo.comments
photo.show



