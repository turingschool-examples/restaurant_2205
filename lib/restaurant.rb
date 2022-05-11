class Restaurant
  attr_reader :opening_time, :name, :dishes, :run_time

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    @run_time = run_time
  end

  def add_dish(dish_name)
    @dishes << dish_name
  end

  def closing_time(run_time)
    integer_opening_time = opening_time.to_i
    integer_opening_time.to_i + run_time
    "#{integer_opening_time + run_time}:00"
  end

  def dishes
    dishes = []
    @dishes.each do |dish_name|
  end

  def open_for_lunch
    opening_time.to_i < 12
  end
end


end
