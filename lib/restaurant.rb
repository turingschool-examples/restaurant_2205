class Restaurant

  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time,name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(time)
    open_time_hour = @opening_time[0,2]
    "#{open_time_hour.to_i + time}"+":00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    open_time_hour = @opening_time[0,2].to_i
    if open_time_hour < 12
      return true
    else
      return false
    end
  end

  def menu_dish_names

    dishes_aggregator = []
    dishes.each do |dish|
      dishes_aggregator << dish.upcase
    end
    
    return dishes_aggregator

  end

end
