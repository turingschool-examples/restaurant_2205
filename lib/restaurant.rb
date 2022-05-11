class Restaurant
attr_accessor :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []

  end


  def opening_time
  opening_time = "10:00"
  end

  def name
    name = "Fuel Cafe"
  end

  def dishes
    dishes = []
  end

# #iteration 2, part 1: the closing_time method should add the number of hours
# #sent in the argument to the opening_time & return the time in 24 hour format.
#
#   def closing_time
#
#     restaurant_1("10:00")
#     restaurant_2("16:00")
#
#     "(restaurant_1.opening_time += 8):00"
#     "(restaurant_2.opening_time += 7):00"

#   end

#iteration 2, part 2:
  # def add_dishes(dish)
  #   @dishes << dishes
  #   restaurant.add_dish = ["Burrata", "Pizzetta", "Ravioli"]
  # end

#iteration 3:

  # def open_for_lunch?
  #   opening_time <= "12:00"
  # end

end
