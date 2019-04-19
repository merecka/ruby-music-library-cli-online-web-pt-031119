class MusicLibraryController

  attr_accessor :file_path

  def initialize(file_path='./db/mp3s')
    @file_path = file_path
    MusicImporter.new(file_path).import
  end

  def call
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"

    response = nil
    until response == "exit"
      response = gets
    end
  end

  def list_songs
    sorted_songs = Song.all.sort_by {|song| song.name }

    sorted_songs.each_with_index do |x, index|
       puts "#{index+1}. #{x.artist.name} - #{x.name} - #{x.genre.name}"
    end
  end

end
