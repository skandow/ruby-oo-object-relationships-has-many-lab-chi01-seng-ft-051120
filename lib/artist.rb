require 'pry'

class Artist
    attr_accessor :name 

    @@song_count = 0

    def initialize(name)
        @name = name 
        @songs = []
    end 

    def add_song(song)
        @songs << songs 
        song.artist = self 
        @@song_count += 1
    end 

    def add_song_by_name(name)
        new_song = Song.new(name)
        added_song = add_song(new_song)
        @@song_count += 1
    end

    def songs 
        Song.all.select {|song| song.artist == self}
    end 

    def self.song_count 
        @@song_count 
    end 
end 