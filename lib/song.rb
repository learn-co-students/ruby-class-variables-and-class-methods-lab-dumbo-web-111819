require 'pry'

class Song

attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = [] #add genres to the array whenever a new song is created.
  @@artists = [] #add artists to this array whenever a new song is intialized.

  def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
  end

  def self.count
    # returns the total number of songs created
    #binding.pry
    @@count
  end

  def self.genres
    # returns an array of all of the GENRES of existing songs. This array should
    # contain only unique genres––no duplicates!
    # Think about what you'll need to do to get this method working.
    @@genres.uniq!
  end

  def self.artists
    # returns an array of all of the artists of the existing songs.
    # This array should only contain unique artists––no repeats!
    # Once again think about what you need to do to implement this behavior.
    # binding.pry
    @@artists.uniq!
  end

  def self.genre_count
    # returns a hash in which the keys are the names of
    # each genre. Each genre name key should point to a value that is the
    # NUMBER of songs that have that genre
    genre_hash = {}
    # if genre_hash[@@genre.name] = self.count
    #   genre_hash[@@genre.name] = self.count
    # end
    # genre_hash@@genres.each do |k|
    @@genres.each do |k|
     if genre_hash[k] == nil
       genre_hash[k] = 1
     else
       genre_hash[k] += 1
   end
  end
  genre_hash
  end

  def self.artist_count
    # returns a histogram similar to the one above, but for artists rather than genres
    artist_hash = {}
    @@artists.each do |k|
    if artist_hash[k] == nil
      artist_hash[k] = 1
    else
      artist_hash[k] += 1
  end
 end
 artist_hash
  end

end
