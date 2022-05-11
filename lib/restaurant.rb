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
    close_string.gsub(".", ":")    # I couldn't think of an easier way
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    @opening_time.to_f < 12
  end

  def menu_dish_names
    dish_names = []
    @dishes.each do |dish|
      dish_names << dish.upcase
    end
    return dish_names
  end

  def announce_closing_time(time)
    announcement = "#{@name} will be closing at #{}"
    # if i did this again I would think about making a converter
    # to make ruby time easier to convert to and fro
  end

end
