class Restaurant
attr_reader :opening_time, :name, :dishes, :menu_dish_names
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    # @announce_closing_time = announce_closing_time
  end

  def closing_time(operating_hours)
    integer_opening_time = opening_time.to_i
    "#{integer_opening_time + operating_hours}:00"
  end

  # def closing_time(hours)
  #   new_time = opening_time.to_i + hours
  #   new_time.to_s + ":00"
  # end

  # open_time_hour = @opening_time.split(/:/,2).first.to_i

  def add_dish(menu_item)
    @dishes << menu_item
    #@dishes.push(menu_item)
  end

  def open_for_lunch?
    opening_time.to_i < 12
  end

  def menu_dish_names
    @dishes.map do |dish|
      dish.upcase
    end
  end
  #   all_caps_dishes = []
  #   @dishes.each do |dish|
  #     all_caps_dishes << dish.upcase
  #   end
  #   all_caps_dishes
  # end

  # def announce_closing_time(time)
  #
  # end
  
end
