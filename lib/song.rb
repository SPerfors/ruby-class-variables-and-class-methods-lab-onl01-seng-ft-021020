class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name 
    @genre = genre
    @@genres << genre
    @artist = artist 
    @@artists << artist
    @@count += 1 
  end
  
  def self.count
    return @@count
  end
  
  def self.artists
    return @@artists.uniq 
  end
  
  def self.genres 
    return @@genres.uniq
  end
  
  def self.genre_count 
    genre_hash = {}
    genre.each do |a, b|
      genre_hash[a] = b 
    end
  end 
  
  
    
  
end