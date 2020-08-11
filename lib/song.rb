class Song 
  attr_accessor :artist, :name
  @@all = []
  def initialize(name)
    @name = name 
    @artist = artist
    @@all << self
  end 
  
  #   creates a new instance of a song from the file that's passed (FAILED - 1)
  #  associates new song instance with the artist from the filename (FAILED - 2)
  
 
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
  end
  def self.new_by_filename(filename)
    file = filename.chomp(".mp3").split(" - ")
    song = self.new(file[1])
    artist = self.new(file[0])
    self.artist.name = artist
    song
    
  end
  
  
  
  #    accepts an artist's name, finds or creates an Artist instance and assigns it to the Song's artist attribute (FAILED - 3)
  

  
  
  
  
  def self.all
    @@all
  end
  def save
    @@all << self
  end
  
end
  