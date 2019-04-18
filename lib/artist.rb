require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    self.all.clear
  end

  def save
    self.class.all << self
  end

  def add_song(song)
    song.artist ? song.artist : song.artist = self
    self.songs.include?(song) ? nil : self.songs << song
  end

  def self.create(artist)
    new_artist = self.new(artist)
    new_artist.save
    new_artist
  end

  def genres
  #  binding.pry
    genres_arry = []
    self.songs.collect do |x|
      genres_arry << x.genre
    end
    binding.pry
    genres_arry.uniq!
  end

end
