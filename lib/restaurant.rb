class Restaurant
  attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    new_time = opening_time.to_i + hours
    new_time.to_s
  ###I keep getting stuck on how to take "18" and get "18:00"###
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?()
    opening_time.to_i
      true
      false
    end

  def menu_dish_names
    return @dishes.upcase if open_for_lunch? == true

  end
end
