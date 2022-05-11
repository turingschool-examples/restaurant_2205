class Restaurant
  attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    new_time = opening_time.to_i + hours

  end

  def add_dish(dish)
    @dishes << dish
  end

  # sum = closing_time("10:00", 6, @name)
end
