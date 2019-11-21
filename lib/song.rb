require 'pry'
class Song 
    attr_reader :name, :artist, :genre

    @@count = 0
    @@artists = []
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
        genre_count = {}
        @@genres.each do |genre_element|
            if genre_count[genre_element]
                genre_count[genre_element] = genre_count[genre_element] + 1
            else
                genre_count[genre_element] = 1
            end
            
        end
        return genre_count
    end
    
    def  self.artist_count 
        artist_count = {}
        @@artists.each do |artist_element|
            if artist_count[artist_element]
                artist_count[artist_element] = artist_count[artist_element] + 1
            else
                artist_count[artist_element] = 1
            end
            
        end
        return artist_count
    end

end

