class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    @opening_time.to_i + hours
    "#{@opening_time.to_i + hours}:00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    if @opening_time < '12:00'
      true
    else
      false
    end
  end

  def menu_dish_names
    @dishes.map do |dish|
      dish.upcase
    end
  end

  def announce_closing_time(hours)
    closed = closing_time(hours).to_i
    if closed  >= 13
      "#{@name} will be closing at #{closed - 12}:00PM"
    else
      "#{@name} will be closing at #{closed}:00AM"
    end
  end
end
