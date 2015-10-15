puts "How much is the bill?"
bill = gets.to_f
puts "The bill is $#{bill}"

tip_percent = 0.20
tip = bill * tip_percent
total = bill + tip

puts "The total is $#{total}"