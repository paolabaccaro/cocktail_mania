def first
	puts "How much is the bill?"
end

def second
	puts "How much much would you like to tip?"
	puts "Options: 10%, 15% or 20%?"
end
		
def third
	puts "How many people are at your table?"
end


first
	bill = gets.chomp.to_f
		if !=Fixnum || !=float
			first
		else
			second
			tip_percent = gets.chomp.to_f
				if != [10, 15, 20]
					second
				else 
					third
					people = gets.chomp.to_i
						if != Fixnum || float
							third
						else
							tip = bill * (tip_percent/100.00)
							total = sprintf('%.2f', (bill + tip)) 
							userTotal = sprintf('%.2f',(total.to_f / people))
							puts "The total bill including tip is $#{total}"
							puts "Your total bill including the tip is $#{userTotal}"
						end
				end
		end