class Artist 
  attr_accessor :name, :songs 
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  def self.all 
    @@all
  end
  def save
    @@all << self
  end
  def add_song(song)
    @songs << song 
    song.artist = self
  end
  def self.find_or_create_by_name(artist_name)
    found_artist = self.all.find {|artist| artist.name == artist_name}
  if found_artist
    found_artist
  else 
    new_artist = self.new(artist_name)
    new_artist.save
    new_artist
  end
  end
  def print_songs()
    puts @songs.collect{|songs| songs.name}
  end
end
    