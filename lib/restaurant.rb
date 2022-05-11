class Restaurant
	attr_reader :opening_time,
							:name,
							:dishes,
							:closing_time

	def initialize(opening_time, name)
		@opening_time = opening_time
		@name = name
		@dishes = []
		@closing_time = []

	end

	def closing_time(closing)
		@closing_time = opening_time.to_i + closing
		@closing_time.to_s + ":00"
	end

	def add_dish(dish)
		@dishes << dish
	end

end
