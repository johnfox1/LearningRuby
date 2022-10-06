# Ch9 Mixins - Re-writing the Media Sharing App exercise, without looking, based on output
# 7th Oct, 2022

# Setting up a module for comment behaviour
module Comments
  def comments
    @comments ||= [] # return itself if true, return empty array if nil
  end  
  def add_comment(comment)
    comments << comment
  end  
end

# Setting up a Superclass for media that has play/stop attributes
class Clip
  def play
    puts "Start the media!"
  end
  def stop
    puts "Stop the media!"
  end  
end

# Setting up the subclassed for different Media Types
class Video < Clip
  include Comments
  attr_accessor :video_resolution
end

class Song < Clip
  include Comments
  attr_accessor :beats_per_minute
end

class Photo
  include Comments
  attr_accessor :pixel_resolution
end

# Code to be executed
video = Video.new
video.add_comment("Cool slow motion effect")
video.add_comment("Weird ending")
song = Song.new
song.add_comment("Awesome beat")
photo = Photo.new
photo.add_comment("Beautiful colours")

p video.comments, song.comments, photo.comments
video.play