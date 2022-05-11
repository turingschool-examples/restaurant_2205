class Restaurant
  attr_accessor :opening_time, :name, :dishes, :closing_time
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    @closing_time = []

  end

  def closing_time(closing_time)
    "#{opening_time.to_i + closing_time}:00"

  end

  def add_dish(dishes)
    @dishes << dishes

  end

  def open_for_lunch?
    opening_time.to_i < 12
  end

  def menu_dish_names
    dishes.map do |dish|
      dish.upcase
    end

  end


end
