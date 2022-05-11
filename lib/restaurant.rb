class Restaurant
	attr_reader :opening_time,
							:name,
							:dishes,
							:closing_time,
							:open_for_lunch

	def initialize(opening_time, name)
		@opening_time = opening_time
		@name = name
		@dishes = []

	end

	def closing_time(closing)
		@closing_time = opening_time.to_i + closing
		@closing_time.to_s + ":00"
	end

	def add_dish(dish)
		@dishes << dish
	end

	def open_for_lunch?(opening_time)
		opening_time.to_i < 12
	end

	def menu_dish_names
		@dishes.map!(&:upcase)
	end
end
