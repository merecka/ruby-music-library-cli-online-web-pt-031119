class Song

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.destroy_all
    self.all.clear
  end

  def self.create(song)
    new_song = self.new(song)
    new_song.save
  end

  def save
    self.class.all << self
  end

end
