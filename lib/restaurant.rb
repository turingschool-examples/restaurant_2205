class Restaurant
  attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(time)
    (@opening_time.to_i + time).to_s + ":00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    if @opening_time.to_i < 12
      true
    elsif @opening_time.to_i > 12
      false
    end
  end

  def menu_dish_names
    @dishes.map do |dish|
      dish.upcase
    end
  end

  def announce_closing_time(time)
    if closing_time(time).to_i < 12
      "#{@name} will be closing at #{closing_time(time).to_i}:00AM"
    else
      "#{@name} will be closing at #{closing_time(time).to_i - 12 }:00PM"
    end

    # if @name = "Fuel Cafe"
    #   "#{@name} will be closing at 11:00AM"
    # elsif @name = "Il Posto"
    #   "#{@name} will be closing at 11:00PM"
    # end
    # require "pry"; binding.pry
  end

end
