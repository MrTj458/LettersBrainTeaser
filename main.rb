class Letters
	def initialize
	end

	def start
		show_menu
	end

	def show_menu
		puts 'Letters'
		puts '1) Enter input'
		puts '2) Exit'
		case gets.chomp.to_i
		when 1
			play
		when 2
			exit
		else
			puts 'Unknown input'
		end
	end

	def play
		puts 'Enter your sentence'
		words = gets.chomp.split(' ')
		repeated = []
		words.each_index do |i|
			repeats = 0
			letters = words[i].split('')
			letters.each_index do |j|
				if letters[j] == letters[j + 1]
					repeats += 1
				end
			end
			repeated << repeats
		end
		
		max_repeat = repeated.compact.max
		if max_repeat == 0
			puts 'No words with repeated letters'
		else
			rep_words = []
			repeated.each_index do |i|
				if repeated[i] == max_repeat
					rep_words << words[i]
				end
			end
			puts "Most Repeated: #{rep_words.join(', ')}"
		end
	end
end

letters = Letters.new
while true
	letters.start
end
