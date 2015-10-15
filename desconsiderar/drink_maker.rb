puts "***** Cocktail Mania *****"
puts "Welcome to out Drink Maker Store!"
puts "Here you are the boss. How would you like to start your drink?"
puts "Options:"
puts "V for Vodka"
puts "C for Champagne" 
puts "W for Wine"
puts "N for Non alcoholic drink"
option = gets.chomp
case option
when "V", "v"
    puts "Great option! Shall we add something special to your Absolute?"
when "C", "c"
    puts "Uau! Your Veuve Clicquot will be great with an extra ingredient, won't it?"
when "W", "w"
    puts "Classy! How about we combine your Brunello di Montalcino with something different?"
when "N", "n"
	puts "Ok. Let's prepare something delicious for you! What are you thinkg about?"
else
    puts "Sorry. This is not an option. You must have something from our bar."
end