require 'pry'

class Song

  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
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
    output = {}

    @@genres.each do |genre|
      if output[genre]
        output[genre] += 1
      else
        output[genre] = 1
      end
    end
    output
  end

  def self.artist_count
    output = {}

    @@artists.each do |artist|
      if output[artist]
        output[artist] += 1
      else
        output[artist] = 1
      end
    end
    output
  end

end # class Song

