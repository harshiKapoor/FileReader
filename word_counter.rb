require_relative 'file_reader1'

class WordCounter  < FileReader1
	attr_accessor :filename, :word

	def initialize(filename, word)
		super(filename)
		@word = word
	end

	# count number of occurrences of given word
	def countWords
		counter = 0
		contents = File.read(@filename)
		words = contents.split(" ")
		words.each do |w|
			if w == @word
				counter = counter + 1
			end
		end
		return counter
	end

	# count numnber of occurrences of each word in file, so if "text" is found 3 times ,it would give count of text is 3 
	def countTotalWords
		hash = {}
		counter = 0
		contents = File.read(@filename)
		words = contents.split(" ")
		words.each do |w|
			if hash.key?(w)
				current_counter = hash[w]
				current_counter = current_counter+1
				hash[w] = current_counter
			else
				hash[w] = counter+1
			end
		end 
		return hash
	end

	# find the word (passed from command line) and replace it with hello
	def changeWord
		contents = File.read(@filename)
		contents = contents.gsub(@word, "hello")
		return contents
	end
	

end

wordcounter = WordCounter.new(ARGV[0],ARGV[1])
puts wordcounter.countWords

hash = {}
hash = wordcounter.countTotalWords
hash.each do |k,v|
  puts k
  puts v
end

puts wordcounter.changeWord


