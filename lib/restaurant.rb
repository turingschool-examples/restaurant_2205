class Restaurant
  attr_reader :opening_time, :name, :dishes
  def initialize (opening_time, name)
    @dishes = []
    @name = name
    @opening_time = opening_time
  end

  def closing_time(adds_to_opening_time)
    @turn_into_int = @opening_time.chop.chop.chop.to_i
    add_hours = (@turn_into_int + adds_to_opening_time)
    turn_into_str = add_hours.to_s
    closing = turn_into_str + ":00"
  end

  def add_dish(new_dish)
    @dishes << new_dish
  end

  def open_for_lunch?
    is_open = true
    if @opening_time.chop.chop.chop.to_i < 12
      is_open
    elsif @opening_time.chop.chop.chop.to_i >= 12
      is_open = false
      return is_open
    elsif @opening_time.chop.chop.chop.to_i >= 24
      p "error"
    end
  end

  def menu_dish_names
      @dishes.each do |dish|
      exciting_menu = []
      exciting_menu << dish.upcase!
      exciting_menu
    end
  end
#did not finish Iteration 4
  # def announce_closing_time(hours_to_close)
  #     sum = @opening_time.chop.chop.chop.to_i + hours_to_close
  #     sum_string = sum.to_s
  #     twelve_hour_format = ""
  #     if sum >= 12
  #       p "Fuel Cafe will be closing at #{sum_string}" + ":00AM"
  #     elsif sum = 23
  #       twelve_hour_format = "11:00PM"
  #       p "Il Posto will be closing at #{twelve_hour_format}"
  #     end
  # end

end
