class FileReader1
	attr_accessor :filename

	def initialize(filename)
		@filename = filename
	end

	def read
		contents = File.read(@filename)
		puts contents
	end
end

