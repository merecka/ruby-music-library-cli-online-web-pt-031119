class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
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

  def self.create(song)
    new_song = self.new(song)
    new_song.save
    new_song
  end

end
