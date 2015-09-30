puts "How much is the bill?"
bill = gets.chomp.to_f

puts "How much much would you like to tip?"
puts "Options: 10%, 15%, 20%, or (c)ustom amount?"

tip_percent = gets.chomp.to_f


puts "How many people are at your table?"
people = gets.chomp.to_i

tip = bill * (tip_percent/100.00)

total = sprintf('%.2f', (bill + tip)) 
puts "The total bill including tip is $#{total}"

userTotal = sprintf('%.2f',(total.to_f / people))
puts "Your total bill including the tip is $#{userTotal}"