require 'pry'

class Song 
  @@count = 0 
  
  def initialize(name, artist) 
    @name = name 
    @artist = name 
  end 
  
  def what_is_the_artist 
    @artist 
  end 
  
  def self.how_many_songs_are_there?
    
  end 
  
end 

binding.pry 