require 'pry'
class Song 
    attr_accessor :name, :genre, :artist
    
    @@count = 0 
    @@artists =[] 
    @@genres = []
    def initialize(name,artist,genre)
        @name = name 
        @artist = artist 
        @genre = genre 
        @@count +=1 
        @@artists << artist 
        @@genres << genre 
end 
    def self.count 
      @@count 
    end 
    def self.artists 
       @@artists.uniq 
    end 
    def self.genres 
        @@genres.uniq
    end 
    def self.genre_count 
       hash = {}
        @@genres.each do |genre|
        if hash[genre] 
            hash[genre] += 1
        else
               hash[genre] = 1 
            end 
        end 
        hash
    end 
    def self.artist_count 
        artist_count = {}
        @@artists.map do |artist| 
            if artist_count[artist] 
                artist_count[artist] +=1 
            else 
                artist_count[artist] = 1 
            end 
        end
        artist_count
    end
end 
# song.genre = genre
# is a class method that returns a hash of genres and the number of songs that have those genres (FAILED - 1)