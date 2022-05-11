class Restaurant
  attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    close = close
    close = opening_time.to_i + hours
    "#{close}:00"
  end

  def add_dish(dish_name)
    dishes << dish_name
  end

  def open_for_lunch?
    if opening_time.to_i <= 12
      true
    else
      false
    end
  end

  def menu_dish_names
    dish_names = []
    dishes.each do |names|
      dish_names << names.upcase
    end
    dish_names
  end

  def announce_closing_time(hours)
    close = close
    close = opening_time.to_i + hours
    if close < 12
      "#{name} will be closing at #{close}:00AM"
    elsif close == 12
      "#{name} will be closing at #{close}:00PM"
    else
      "#{name} will be closing at #{close - 12}:00PM"
    end
  end
end
