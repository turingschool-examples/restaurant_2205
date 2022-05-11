class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def closing_time(time)
    time.to_s
    @time = time + @opening_time
  end

end
