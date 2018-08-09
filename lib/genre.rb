class Genre
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end # initialize

  def self.all
    @@all
  end # self.all

  def new_song(name, artist)
    Song.new(name, artist, self)
  end # new_song

  def songs
    Song.all.select do |song|
      song.genre == self
    end # Song.all.select
  end # songs

  def artists
    songs.map do |song|
      song.artist
    end # songs.map
  end # artists

end # class Genre
