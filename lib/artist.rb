require 'pry'
# require_relative "./song.rb"

class Artist
attr_accessor :name

attr_reader :songs
@@artists = []


def self.artists
  @@artists
end

  def initialize (name)
    @name = name
    @@artists << self
    @songs = []
  end

  def add_song (song)
    # if !@songs then @songs = [] end

    song.artist = self #pass the artist's object
    # binding.pry
    @songs << song
  end

  def add_song_by_name (name)
    new_song = Song.new(name)
    new_song.artist = self
    @songs << new_song
  end

  def self.song_count
    Song.all.length
  end


end
