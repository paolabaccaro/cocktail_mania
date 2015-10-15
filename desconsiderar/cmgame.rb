def first_option_menu
	puts "Options:"
	puts "V for Vodka"
	puts "C for Champagne" 
	puts "W for Wine"
	puts "N for Non alcoholic drink"
end

def option_with_vodka
	puts "Options:"
	puts "R for Red Bull"
	puts "C for Cranberry Juice"
	puts "A for Apple Liquor"
	puts "N for Nothing - plain Vodka"
end

def option_with_champagne
	puts "Options:"
	puts "P for Peach Juice"	#Bellini Cocktail
	puts "C for Cassis Liquor"		#Kir Royal Cocktail
	puts "O for Orange Juice"	#Mimosa Cocktail
	puts "N for Nothing - plain Champagne"
end

def option_with_wine
	puts "Options:"
	puts "G for Gin"	#Vampira Voodoo Cocktail
	puts "O for Orange Juice"	#Punch
	puts "S for Soda"	#Wine Cruch Cocktail
	puts "N for Nothing - plain Wine"
end

def option_non_alcoholic
	puts "Options:"
	puts "O for Orange Juice"
	puts "M for Milk"
	puts "I for Ice Cream"
	puts "W for Water"
end

def option_with_redbull
	puts "Options:"
	puts "B for Blue Curacao"
	puts "T for Tequila"
	puts "A for Absinthe"
	puts "N for Nothing - that's all"
end

def option_with_cranberry
	puts "Options:"
	puts "P for Pink Grapefruit Juice" 	#Seabreeze Cocktail
	puts "C for Champagne" 	#Champagne Cosmo Cocktail
	puts "L for Lemon"	#Cape Cod Cocktail
	puts "N for Nothing - that's all"
end	

def option_with_apple
	puts "Options:"
	puts "L for Lemon Juice"	#Apple Martini 	
	puts "R for Rum" 	#Adam y Eva Cocktail
	puts "S for Soda"	#P2 Cocktail
	puts "N for Nothing - that's all"
end

def option_with_orange
	puts "Options:"
	puts "B for Berries Tea"	#Wild Tea Cocktail 	
	puts "M for Mango Juice" 	#Sensations Cocktail
	puts "S for Soda"	#Indian Cooler Cocktail
	puts "N for Nothing - that's all"
end

def option_with_milk
	puts "Options:"
	puts "P for Powder Cocoa"	#Chocolate Milk 	
	puts "H for Honey" 	#Refreshing Milk Cocktail
	puts "C for Coffe"	#Latte
	puts "N for Nothing - that's all"
end

def option_with_ice_cream
	puts "Options:"
	puts "S for Strawberries"	#Strawberry Dream Cocktail	
	puts "B for Bananas" 	#Banana Boat Cocktail
	puts "C for Chocolate"	#Love-Love Cocktail
	puts "N for Nothing - that's all"
end

def option_with_water
	puts "Options:"
	puts "L for Lemon"	#Lemonade	
	puts "P for Pineapple" 	#Pineapple Juice
	puts "S for Sugar"	#Anti-Stress Cocktail
	puts "N for Nothing - that's all"
end

def organize(sentence)
	puts "*"*50
	puts sentence
	puts "*"*50
end


puts "***** Cocktail Mania *****"
puts "Welcome to our Drink Maker Store!"
puts "Here you are the boss. How would you like to start your drink?"
first_option_menu


def start
while true
	first_step = $stdin.gets.chomp
	if first_step.downcase == "v"
		puts "Great option! Shall we add something special to your Absolute?"
		option_with_vodka
			while true
				second_step = $stdin.gets.chomp
					if second_step.downcase == "r"
						puts "Vigorous! What would you like to add?"
						option_with_redbull
							while true
								option_with_redbull = $stdin.gets.chomp
									if option_with_redbull.downcase == "b"
										puts "Uhu! You just made a Blue Bull Cocktail! Time for another drink!"
										first_option_menu
										start
									elsif option_with_redbull.downcase == "t"
										puts "Uepa! You just made a Matador Cocktail! Time for another drink!"
										first_option_menu
										start
									elsif option_with_redbull.downcase == "a"
										puts "You are my hero! You just made a Bull Rush Cocktail! Time for another drink!"
										first_option_menu
										start
									elsif option_with_redbull.downcase == "n"
										puts "Ok! Enjoy it! Time for another drink!"
										first_option_menu
										start
									else
										puts "Sorry. This is not an option. You must have something from our bar."
										option_with_redbull
									end
							end
					elsif second_step.downcase == "c"
						puts "Delicious! What would you like to add?"
						option_with_cranberry
							while true
								option_with_cranberry = $stdin.gets.chomp
									if option_with_cranberry.downcase == "p"
										puts "Nice! You just made a Seabreeze Cocktail! Time for another drink!"
										first_option_menu
										start
									elsif option_with_cranberry.downcase == "c"
										puts "Lovely! You just made a Champagne Cosmo Cocktail! Time for another drink!"
										first_option_menu
										start
									elsif option_with_cranberry.downcase == "l"
										puts "Refreshing! You just made a Cape Cod Cocktail! Time for another drink!"
										first_option_menu
										start
									elsif option_with_cranberry.downcase == "n"
										puts "Ok! Enjoy it! Time for another drink!"
										first_option_menu
										start
									else
										puts "Sorry. This is not an option. You must have something from our bar."
										option_with_cranberry
									end
							end
					elsif second_step.downcase == "a"
						puts "Amazing! What would you like to add?"
						option_with_apple
							while true
								option_with_apple = $stdin.gets.chomp
									if option_with_apple.downcase == "l"
										puts "Incredible! You just made a Apple Martini! Time for another drink!"
										first_option_menu
										start
									elsif option_with_apple.downcase == "r"
										puts "Impressive! You just made a Adam y Eva Cocktail! Time for another drink!"
										first_option_menu
										start
									elsif option_with_apple.downcase == "s"
										puts "Awesome! You just made a P2 Cocktail! Time for another drink!"
										first_option_menu
										start
									elsif option_with_apple.downcase == "n"
										puts "Ok! Enjoy it! Time for another drink!"
										first_option_menu
										start
									else
										puts "Sorry. This is not an option. You must have something from our bar."
										option_with_apple
									end
							end
					elsif second_step.downcase == "n"	
						puts "Oh, boy! Tough one! Enjoy it! Time for another drink!"
						first_option_menu
						start
					else
						puts "Sorry. This is not an option. You must have something from our bar."
						second_step
					end
			end
	elsif first_step.downcase == "c"
    	puts "Uau! Your Veuve Clicquot will be great with an extra ingredient, won't it?"
    	option_with_champagne
			while true
				option_with_champagne = $stdin.gets.chomp
					if option_with_champagne.downcase == "p"
						puts "Beautifil! You just made a Bellini Cocktail! Time for another drink!"
						first_option_menu
						start
					elsif option_with_champagne.downcase == "c"
						puts "Fabulous! You just made a Kir Royal Cocktail! Time for another drink!"
						first_option_menu
						start
					elsif option_with_champagne.downcase == "o"
						puts "Mumu! You just made a Mimosa Cocktail! Time for another drink!"
						first_option_menu
						start
					elsif option_with_champagne.downcase == "n"
						puts "Ok! Enjoy it! Time for another drink!"
						first_option_menu
						start
					else
						puts "Sorry. This is not an option. You must have something from our bar."
						option_with_champagne
					end
			end			
	elsif first_step.downcase == "w"
    	puts "Classy! How about we combine your Brunello di Montalcino with something different?"
		option_with_wine
			while true
				option_with_wine = $stdin.gets.chomp
					if option_with_wine.downcase == "g"
						puts "Cool! You just made a Vampire Voodoo Cocktail! Time for another drink!"
						first_option_menu
						start
					elsif option_with_wine.downcase == "o"
						puts "Fun! You just made a Punch! Time for another drink!"
						first_option_menu
						start
					elsif option_with_wine.downcase == "s"
						puts "Sweet! You just made a Wine Cruch Cocktail! Time for another drink!"
						first_option_menu
						start
					elsif option_with_wine.downcase == "n"
						puts "Ok! Enjoy it! Time for another drink!"
						first_option_menu
						start
					else
						puts "Sorry. This is not an option. You must have something from our bar."
						option_with_wine
					end
			end		
	elsif first_step.downcase == "n"
		puts "Ok. Let's prepare something delicious for you! What are you thinkig about?"
		option_non_alcoholic
			while true
				option_non_alcoholic = $stdin.gets.chomp
					if option_non_alcoholic == "o"
						puts "Healthy! What would you like to add?"
						option_with_orange
							while true
								option_with_orange = $stdin.gets.chomp
									if option_with_orange.downcase == "b"
										puts "Well done! You just made a Wild Tea Cocktail! Time for another drink!"
										first_option_menu
										start
									elsif option_with_orange.downcase == "m"
										puts "Fun! You just made a Sensations Cocktail! Time for another drink!"
										first_option_menu
										start
									elsif option_with_orange.downcase == "s"
										puts "Crazy! You just made a Indian Cooler Cocktail! Time for another drink!"
										first_option_menu
										start
									elsif option_with_orange.downcase == "n"
										puts "Ok! Enjoy it! Time for another drink!"
										first_option_menu
										start
									else
										puts "Sorry. This is not an option. You must have something from our bar."
										option_with_orange
									end
							end
					elsif option_non_alcoholic == "m"
						puts "Delicious! What would you like to add?"
						option_with_milk
							while true
								option_with_milk = $stdin.gets.chomp
									if option_with_milk.downcase == "p"
										puts "Love it! You just made a Chocolate Milk ! Time for another drink!"
										first_option_menu
										start
									elsif option_with_milk.downcase == "h"
										puts "Devine! You just made a Refreshing Milk Cocktail! Time for another drink!"
										first_option_menu
										start
									elsif option_with_milk.downcase == "c"
										puts "Perfect! You just made a Latte! Time for another drink!"
										first_option_menu
										start
									elsif option_with_milk.downcase == "n"
										puts "Ok! Enjoy it! Time for another drink!"
										first_option_menu
										start
									else
										puts "Sorry. This is not an option. You must have something from our bar."
										option_with_milk
									end
							end
					elsif option_non_alcoholic == "i"
						puts "Amazing! What would you like to add?"
						option_with_ice_cream
							while true
								option_with_ice_cream = $stdin.gets.chomp
									if option_with_ice_cream.downcase == "s"
										puts "Gorgeous! You just made a Strawberry Dream Cocktail! Time for another drink!"
										first_option_menu
										start
									elsif option_with_ice_cream.downcase == "b"
										puts "Delicious! You just made a Banana Boat Cocktail! Time for another drink!"
										first_option_menu
										start
									elsif option_with_ice_cream.downcase == "c"
										puts "Great choice! You just made a Love-Love Cocktail! Time for another drink!"
										first_option_menu
										start
									elsif option_with_ice_cream.downcase == "n"
										puts "Ok! Enjoy it! Time for a real drink!"
										first_option_menu
										start
									else
										puts "Sorry. This is not an option. You must have something from our bar."
										option_with_ice_cream
									end
							end
					elsif option_non_alcoholic == "w"	
						puts "Right now! What would you like to add?"
						option_with_water
							while true
								option_with_water = $stdin.gets.chomp
									if option_with_water.downcase == "l"
										puts "Cool! You just made a Lemonade! Time for another drink!"
										first_option_menu
										start
									elsif option_with_water.downcase == "p"
										puts "Tasty! You just made a Pineapple Juice! Time for another drink!"
										first_option_menu
										start
									elsif option_with_water.downcase == "s"
										puts "Are you ok? You just made a Anti-Stress Cocktail! Time for another drink!"
										first_option_menu
										start
									elsif option_with_water.downcase == "n"
										puts "Ok! Enjoy it! Time for a real drink!"
										first_option_menu
										start
									else
										puts "Sorry. This is not an option. You must have something from our bar."
										option_non_alcoholic
									end
							end
					else 	
						puts "Sorry. This is not an option. You must have something from our bar."
						option_non_alcoholic
					end
			end
	else
		puts "Sorry. This is not an option. You must have something from our bar."
		first_option_menu
	end
end	
end

start