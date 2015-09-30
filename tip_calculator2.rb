def tip_list
	puts "Options:"
	puts "A for 10%"
	puts "B for 15%"
	puts "C for 20%"
end

def tip
	while true
		tip_list = $stdin.gets.chomp
			if tip_list.downcase == "a"
				puts bill * 0.10
			elsif tip_list.downcase == "b"
				puts bill * 0.15
			elsif tip_list.downcase == "c"
				puts bill * 0.20
			else
				puts "That is not an option. Please select between the list below:"
				tip_list
					while true
						ption_with_redbull = $stdin.gets.chomp
			end
	end
end

puts "How much is the bill?"
bill = gets.chomp.to_f

puts "How much would you like to tip?"
puts tip_list
	while true
		tip = $stdin.gets.chomp
			tip
			