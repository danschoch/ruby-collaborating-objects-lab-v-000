class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file_array = filename.split(" - ")
    new_song = self.class.new(file_array[1])
    new_song.artist = file_array[0]
  end
end
