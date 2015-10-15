# define a DSL (domain-specific language) (you wite the code that you wish that you have)
def say (name, statement)
	puts (name.nil? ? statement : "#{name.capitalize}: #{statement}")
	#if name.nil?
	#	puts statement
	#else
	#	puts "#{name.capitalize}: #{statement}"
	#end
end


def ask_question(question, options)
	say nil, "*" * 50 
	say nil, question
	say nil, options 	# Options: #{options}
	gets.chomp.downcase # answer = gets.chomp.downcase 	# variable = gets.chomp.downcase # canonicalization
end

say nil, "After all of your hard work you've become Batman!"

# ask the user a question
sidekick = ask_question ("Who will be our sidekick?", "Batgirl or Robin")

onSidekick(sidekick)

#say "Who will be our sidekick?"
#say "Options: Batgirl or Robin"
sidekick = gets.chomp.downcase

#what to do "onSidekick"

def onSidekick
	if sidekick == "Robin" #Robin, RoBin etc. If sidekick == Robin || sidekick == RoBin etc. 
		say "Robin: Holy rusted metal, Batman!"
	elsif sidekick == "Batgirl" #BATGIRL, BatGirl etc.
		say "Batgirl: Suit me up, Uncle Alfred"
	else
		say nil,  "Fine, I'll pick one for you"
		sidekick = "Robin"
	end
end

### invariant
## sidekick must be set correctly
p sidekick #talvez isso saia

sidekick = sidekick.capitalize

# question 2
# ask the user a question

#weapon = ask_question ("Awesome choice! Let's get your  sidekick a weapon.", "batarang, fists, flashlight")

say "Awesome choice! Let's get your  sidekick a weapon."
say "Options: batarang, fists, flashlight"
weapon = gets.chomp.downcase

#if weapon == something
#	do something
#elsif weapon == something else
#	do something else
#else
#	default something
#end

case weapon
when "batarang"
	say "#{sidekick}: Awesome! A Batarang! Thanks Batman"
when "fists"
	say "#{sidekick}: I don't need a weapon. I'll just use my fists like you Bataman!"
when "flashlight"
	say "#{sidekick}: Uh..thanks? I'll make sure to keep a light on you"
else
	say nil, "Don't be selfish. Share your toys with your sidekick!"
	weapon = "batarang"
end

# question 3
# ask the user a question

#enemy = ask_question ("Who should we fight first?", "Joker, Penguin, Riddler")

say "Who should we fight first"
say "Options: Joker, Penguin, Riddler"
enemy = gets.chomp.downcase

until #I get what I want
	say "Huh?"
	say "Option: Joker, Penguin, Riddler"
	enemy = gets.chomp.downcase
end

# sanitizing your inputs
# enemy = nil
until ["riddler", "penguin", "joker"].include? enemy
#until (enemy == "joker" || enemy == "penguin" || enemy == "riddler")
	say "Huh?"
	say "Options: Joker, Penguin, Riddler"
	enemy = get.chomp.downcase
end

# invariant
# the enemy must be valid

# enemy = enemy.capitalize
enemy.capitalize!

case enemy
when "riddler"
	say "#{enemy}: Puzzle me this, Batman!"
when "joker"
	say "#{enemy}: Ha ha ha ha.. ha ha!"
when "penguin"
	say "#{enemy}: Rweh rweh rweh.."
else
	say nil, "This shouldn't happen."
end


