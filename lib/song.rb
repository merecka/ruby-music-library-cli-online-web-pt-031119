class Song

  attr_accessor :name, :genre

  @@all = []

  def artist
    @artist
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def genre
    @genre
  end

  def genre=(genre)
    @genre = genre
    genre.songs.include?(self) ? nil : genre.songs << self
  end

  def initialize(name, artist=nil, genre=nil)
    @name = name
    @artist = artist
    @genre = genre
    if genre != nil
      self.genre=(genre)
    end
    if artist != nil
      self.artist=(artist)
    end
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

  def self.find_by_name(song_name)
    self.all.find{|x| x.name == song_name}
  end

  def self.find_or_create_by_name(song_name)
    find_by_name(song_name) ? find_by_name(song_name) : create(song_name)
  end

end
