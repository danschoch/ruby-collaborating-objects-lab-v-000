require 'pry'

class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(filename)
    file_array = filename.split(" - ")
    new_song = self.new(file_array[1])
    new_song.artist_name = file_array[0]
    binding.pry
  end
end
