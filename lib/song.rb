class Song 
  attr_accessor :artist, :name
  @@all = []
  def initialize(name)
    @name = name 
    @artist = artist
    @@all << self
    
  end 
  
  #   creates a new instance of a song from the file that's passed (FAILED - 1)?
  #  associates new song instance with the artist from the filename (FAILED - 2)
  
 
  def artist_name=(artist_name)
    if Artist.all.detect{|name| name.name == artist_name}
      self.artist = Artist.all.detect{|name| name.name == artist_name}
    else 
      self.artist = Artist.new(artist_name)
    end
  end
  def self.new_by_filename(filename)
    song = filename.chomp(".mp3").split(" - ")[1]
    artist_name = filename.chomp(".mp3").split(" - ")[0]
    artist_name = self.new(file[0])
    self.artist = artist_name
    return song
    
  end
  
  
  
  #    accepts an artist's name, finds or creates an Artist instance and assigns it to the Song's artist attribute (FAILED - 3)
  

  
  
  
  
  def self.all
    @@all
  end
  def save
    @@all << self
  end
  
end
  