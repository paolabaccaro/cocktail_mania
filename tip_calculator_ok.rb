def first
	puts "How much is the bill?"
	bill = gets.chomp.to_f
		if false
			first
		else true
			def second
				puts "How much much would you like to tip?"
				puts "Options: 10%, 15% or 20%?"
				tip_percent = gets.chomp.to_f
					if false
						second
					else true
						def third
						puts "How many people are at your table?"
						people = gets.chomp.to_i
							if false
								third
							else true
								def fourth
								tip = bill * (tip_percent/100.00)
								total = sprintf('%.2f', (bill + tip)) 
								puts "The total bill including tip is $#{total}"
								userTotal = sprintf('%.2f',(total.to_f / people))
								puts "Your total bill including the tip is $#{userTotal}"
								end
							end
						end
					end
				end
			end
		end
	end
end

first