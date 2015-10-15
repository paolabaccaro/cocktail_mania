class TipCalculator
	def bill(cost)
		@cost = cost
	end

	def tip
		@tip = @cost * 0.20
	end

	def total
		@total = @cost + @tip
	end

	def share(num_people)
		@num_people = num_people
		@my_share = @total / num_people
	end
end

coyo = TipCalculator.new
p coyo.bill(500)
p coyo.tip
p coyo.total
p coyo.share(4)