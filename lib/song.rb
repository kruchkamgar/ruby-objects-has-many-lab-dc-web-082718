class Song
  attr_accessor :artist
  attr_reader :name

@@all = []

  def self.all
    @@all
  end

  def initialize (song_name)
    @name = song_name

    @@all << self
  end

  def artist_name

    if @artist then return @artist.name else return nil end
  end


end
