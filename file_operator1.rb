require_relative 'file_reader1'
require_relative 'csv_reader1'

class FileOperator1
	filereader = CsvReader1.new(ARGV[0])

	if ARGV[0] && File.exist?(ARGV[0])
		filename = ARGV[0].split('.')

		if filename[1] == 'txt'
			FileReader1.new(ARGV[0]).read
		elsif filename[1] == 'csv'
			CsvReader1.new(ARGV[0]).read
		else
			puts "file with this extension does not exist"
		end
	else
		puts "give me correct file to read"
	end



end