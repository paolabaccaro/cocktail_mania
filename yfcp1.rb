
# s.side_length = 5
# s.side_length


# class Square
# 	def side_lenght(5)
# 		[] <<5
# 	end

# 	def look_at
# 		[]
# 	end
# end


# s = Square.new 5
# puts s.side_lenght

# def side_lenght=(5)
# 	@side_lenght=5
# end

######
# class Square
# 	attr_writer :side_length
# 	def side_length=(s_length)
# 		@side_length = s_length
# 	end
# end

# s = Square.new
# s.side_length = 5

# s.side_length
######


class Square
  attr_accessor :side_length

	# attr_writer :side_length
 #  def side_length=(new_side_length)
 #    @side_length = new_side_length
	# end

 #  attr_reader :side_length
	# def side_length
	# 	@side_length
	# end
end
#s.side_length


s = Square.new
# s.side_length = 5
# p s.side_length





class Square
	attr_accessor :side_length
		def initialize(side_length)
			@side_length = side_length
		end
end

s = Square.new(5)

p s.side_length



