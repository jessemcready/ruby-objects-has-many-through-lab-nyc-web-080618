require 'pry'
require_relative 'genre'
require_relative 'song'
class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end # initialize

  def self.all
    @@all
  end # self.all

  def new_song(name, genre)
    Song.new(name, self, genre)
  end # new_song

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end # songs

  def genres
    songs.map do |song|
      song.genre
    end
  end # genres

end # end class Artist


# jayz = Artist.new("jayz")
# rap = Genre.new("rap")
# song = Song.new("Ninety Nine Problems", jayz, rap)
# binding.pry
