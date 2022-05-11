class Restaurant
attr_accessor :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(closing_time)
    actual_closing_time = opening_time.to_i + closing_time
    "#{actual_closing_time}:00"
  end

  def add_dish(dish)
    dishes << dish
  end

  def open_for_lunch?
    if opening_time.to_i < 13
      true
    else
      false
    end
  end

  def menu_dish_names
    dishes.map!(&:upcase)
  end
end
