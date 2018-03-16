require_relative 'file_reader1'
require 'csv'

class CsvReader1 < FileReader1

	def initialize(filename)
		super
	end

	def read
		contents = CSV.read(@filename)
		puts contents
	end

end