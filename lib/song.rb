require 'pry'

# The `Song` class can produce individual songs. Each song has a name, an artist and a genre.

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
  

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    # * Create a class variable, `@@count`. We will use this variable to keep track of the number of new songs that are created from the `Song` class. Set this variable equal to `0`.
    # binding.pry
    # * Write a class method, `.count`, that returns the total number of songs created.
    def self.count
        @@count
    end

    def self.genres
      @@genres.uniq!
    end

    def self.artists
        @@artists.uniq!
    end

    # Should return something like this;
    # ```ruby
    # {"rap" => 5, "rock" => 1, "country" => 3}
    # ```
    def self.genre_count
    
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
            genre_count[genre] += 1 
            else
            genre_count[genre] = 1
            end
        end
        genre_count
        # binding.pry
    end

#     ```ruby
# Song.artist_count
#   # => {"Beyonce" => 17, "Jay-Z" => 40}
# ```

def self.artist_count

    artist_count = {}
    @@artists.each do |artist|
        if artist_count[artist]
            artist_count[artist] += 1
        else
            artist_count[artist] = 1
        end
    end
    artist_count
end

   

end #end of class
