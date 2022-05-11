class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name  = name
    @dishes = []
    @start_hour = @opening_time[0,2].to_i
    @menu = []
  end

  def closing_time(hours)
    @close_hour = @start_hour + hours
    if @close_hour >= 24
      @close_hour -= 24
    end
    return @close_hour.to_s + ":00"
  end

  def add_dish(dish)
    dishes << dish
  end

  def open_for_lunch?
    return @start_hour < 12
  end

  def menu_dish_names
    dishes.each do |dish|
      @menu << dish.upcase
    end
    return @menu
  end

  def announce_closing_time(hours)
    if @start_hour + hours > 24
      @close_hour = @start_hour + hours - 24
      return @close_hour.to_s + ":00AM"
    elsif @start_hour + hours > 12
      @close_hour = @start_hour + hours - 12
      return @close_hour.to_s + ":00PM"
    else
        @close_hour = @start_hour + hours
        return @close_hour.to_s + ":00AM"
      end
  end

end
