require 'pry'

class Song

	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(file)
		x = file.split(" - ")
		new_song = 	Song.new(x[1])
		
		new_song.artist = Artist.find_or_create_by_name(x[0])
		new_song.artist.add_song(x[1])

		new_song
	end

end