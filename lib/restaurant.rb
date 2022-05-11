class Restaurant

  attr_reader :opening_time,
              :name,
              :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hrs)
    closing_time = @opening_time.to_i + hrs
    closing_time.to_s.concat(':00')
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    @opening_time.to_i < 12
  end

  def menu_dish_names
    menu_dish_names = @dishes.map do |dish|
      dish.upcase
    end
    menu_dish_names
  end
end
