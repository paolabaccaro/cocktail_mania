require './voter.rb'

class World
	def initialize
		@voters = []
	end

	def main_menu
		puts "What would you like to do?
		(C)reate, (L)ist, (U)pdate, or (V)ote"
		option = "C" #gets.chomp.upcase

		case option
		when "C"
			create_menu
			# puts "What would you like to create?
			# (P)olitician or (V)oter"
			# create_option = "V" #gets.chomp.upcase
			# case create_option
			# when "P"
			# 	puts "Name?"
			# 	name = "Ed" #gets.chomp
			# when "V"
			# else
			# end
		when "L"
		when "U"
		when "V"
			create_voter_menu
		when "P"
		else
		end
	end
end

	def create_voter_menu
		puts "Name?"
		name = "Ed" #gets.chomp

		puts "Politics?
		(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral"
		politics = "L" #gets.chomp.upcase

		@voters << Voter.new(name, politics)
		#main_menu
	end

	def find_voter(name)
		# @voters.each do |voter|
		# 	if voter.name == name
		# 		return voter
		@voters.select do |voter|
			voter.name == name
			end
		end
	end
end


# def test
# 	# voter = Voter.new("Ed", "Liberal")
# 	# p voter.name, voter.politics

# 	world = World.new
# 	world.main_menu

# 	voters = world.voters
# 	voter = voters.first
# 	p voter.name, voter.politics
# end



def test
	voters = [Voter.new("Ed", "Liberal"), Voter.new("Juha", "Tea Party"), Voter.new("Jo", "Socialist")]

	world = World.new
	world.main_menu

	voters = world.voters
	voter = voters.first
	p voter.name, voter.politics
end





test