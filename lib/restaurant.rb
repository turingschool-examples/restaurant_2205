class Restaurant
  attr_reader :opening_time, :name, :dishes, :menu
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    @menu = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def menu_dish_names
    dishes.map(&:upcase)
  end

  # def open_for_lunch?
  #   opening_time.chop.chop.chop.to_i
  #   if opening_time <= 12
  #     true
  #   else
  #     false
  #   end
  # end

  # def closing_time(hours_open)
  #   opening_time.chop.chop.chop.to_i
  #   opening_time += hours_open
  # end

end
