class Restaurant
  attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end


  def closing_time(hours)

    new_time = opening_time.to_i + hours
    new_time.to_s + ":00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    lunch_time = opening_time.delete(":00")
    new = lunch_time.to_i
    if new < 12
      true

    end



  end

  def menu_dish_names
    @dishes << add_dish.upcase

  end
end
