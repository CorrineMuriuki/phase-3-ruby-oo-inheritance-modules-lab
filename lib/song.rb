require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  
#define method as a class method
  extend Memorable, Findable
  include Paramable, Memorable::InstanceMethods

  @@songs = []

  #def initialize
    #self.class.all << self
  #end

  def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
  end
end

  #def to_param
    #name.downcase.gsub(' ', '-')
  #end
