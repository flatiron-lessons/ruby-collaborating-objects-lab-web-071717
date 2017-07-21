require 'pry'

class MP3Importer

	attr_accessor :path

	# accepts a file path to parse mp3 files from
	def initialize(file_path)
		@path = file_path
	end

	# loads all the mp3 files in the path directory
	# normalizes the filename to just the mp3 filename with no path
	def files
		@array_of_mp3s = Dir["#{@path}/*.mp3"]
		@array_of_mp3s.map do |mp3|
			mp3.slice!("#{@path}/")
			mp3
		end
	end

	# imports the files into the library by creating songs from a filename
	def import
		self.files.each do |mp3|		
			Song.new_by_filename(mp3)
		end
	end

end