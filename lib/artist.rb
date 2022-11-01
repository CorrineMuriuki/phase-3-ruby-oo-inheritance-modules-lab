require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  extend Memorable, Findable
  include Paramable, Memorable::InstanceMethods

  @@artists = []

  def initialize
    #self.class.all << self
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end 