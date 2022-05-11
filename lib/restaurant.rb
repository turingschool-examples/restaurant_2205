require 'pry'

class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    close = @opening_time.to_f + hours.to_f
    close_string = '%.2f' % close  # did i do this 'the hard way'?
    close_string.gsub(".", ":")    # I could think of an easier way
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    binding.pry
    if @opening_time.to_f < 12
      true
    end
  end

  def menu_dish_names
    dish_names = []
    @dishes.each do |dish|
      dish_names << dish.upcase
    end
    return dish_names
  end

end
