class Genre 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Songs.all.find_all {|song| song.genre == self}
  end
  
  def artists
    songs.map {|song| song.artist}
  end
  
end