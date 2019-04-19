class MusicLibraryController

  attr_accessor :file_path

  def initialize(file_path='./db/mp3s')
    @file_path = file_path
    MusicImporter.new(file_path).import
  end

  def call
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
  end

end
