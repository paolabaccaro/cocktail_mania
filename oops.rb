# actor_name = 'Angelina Jolie'
# actor_age = 40


class Actor
	attr_accessor :name, :birthday, :gender
	# def name
	# 	@name
	# end
	# def name= name
	# 	@name = name
	# end

# def get_age(birthday)
# 	((Time.new - actor[:birthday]) /60 / 60 / 24 / 365).to_i
# end

	# attr_reader
	# attr_writer

	def initialize name, birthday, gender
		@name = name
		@birthday = birthday
		@gender = gender
	end

	def age
		((Time.now - @birthday) /60 / 60 / 24 / 365).to_i
	end
end


