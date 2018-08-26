class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
  end

  def self.new_by_filename(filename)
    file_array = filename.split(" - ")
    new_song = self.new(file_array[1])
    new_song.artist = file_array[0]
  end
end
