require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  # include Paramable
  # extend Memorable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    super
    #@@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
