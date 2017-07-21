require 'pry'
class Artist

	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def songs
		@songs
	end

	def save
		@@all << self
	end

	def self.find_or_create_by_name(artist)
		x = @@all.find do |instance|
			instance.name == artist
		end
		if x == nil
			y = self.new(artist)
			y.save
			y
		else
			x
		end
	end

	def print_songs
		@songs.each do |song|
			puts song.name
		end
	end

	def self.all
		@@all
	end

	def add_song(song)
		@songs << song
	end

end













