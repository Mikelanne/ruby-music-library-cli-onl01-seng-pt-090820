require 'pry'
class Artist
  
    attr_accessor :name, :genre
    attr_reader :songs
  
    @@all = []
  
    def initialize(name)
      @name = name
      @songs = []
      @genre = genre
    end
  
    def self.all
      @@all
    end
  
    def self.destroy_all
      @@all.clear 
    end 

     def save
      @@all << self 
    end 
    
    def self.create(new_artist)
      new_artist = Artist.new(name)
      new_artist.save
      new_artist
    end 
    
    def add_song(song)
      if !song.artist
        song.artist = self
      end
      if !@songs.include?(song)
        @songs << song
      end 
    end 

    def genres
      
    end 
  end