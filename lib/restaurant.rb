class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    @opening = @opening_time[0,2].to_i
    @menu = []

  end

  def closing_time(in_hours)
    opening_hour = opening_time[0..1].to_i
    closing_hour = opening_hour + in_hours
    if closing_hour >= 24
      closing_hour -= 24
    end
    if closing_hour < 10
      closing_time = "0#{closing_hour}:00"
    else
      closing_time = "#{closing_hour}:00"
    end
  end

  def add_dish(dishes)
    @dishes << dishes
  end

  def open_for_lunch?
    return @opening < 12

  end

  def open_or_closed
    return "open" if open_for_lunch? == true
    return "closed" if open_for_lunch? == false
  end

  def menu_dish_names
    dishes.each do |dish|
      @menu << dish.upcase
    end
    return @menu
  end

end
