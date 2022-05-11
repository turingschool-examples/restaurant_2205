class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(time)
    integer_opening_time = opening_time. to_i
    "#{integer_opening_time + time}:00"
  end

  def add_dish(dishes)
    @dishes.push(dishes)
  end

  def open_for_lunch?
    opening_time < "12:00"
  end

  def menu_dish_names
    menu_dish_names = []
    @dishes.each do |menu_dish|
      menu_dish_names << menu_dish.upcase
    end
    menu_dish_names
  end

  def announce_closing_time(time)
    integer_opening_time = opening_time. to_i
    if integer_opening_time + time < 12
    "#{@name} will be closing at #{integer_opening_time + time}:00AM"
    else
      "#{@name} will be closing at #{integer_opening_time + time - 12}:00PM"
    end
  end


end
