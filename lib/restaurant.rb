class Restaurant


  attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hour)
    close = (@opening_time.to_i + hour)
    close_hours = close.to_s
    hour_format = close_hours.insert(2, ":00")
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
      if @opening_time.to_i > 12
        false
      else
        true
      end
  end

  def menu_dish_names
    @dishes.map {|dish| dish.upcase}
  end

end
