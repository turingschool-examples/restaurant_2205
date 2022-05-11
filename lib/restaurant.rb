class Restaurant

  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time,name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(time)
    open_time_hour = @opening_time.split(/:/,2).first.to_i
    "#{open_time_hour.to_i + time}"+":00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    open_time_hour = @opening_time.split(/:/,2).first.to_i

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

  def announce_closing_time(time)
    open_time_hour = @opening_time.split(/:/,2).first.to_i


    if open_time_hour + time > 12
      return "#{@name} will be closing at #{(open_time_hour+time)-12}:00PM"
    elsif open_time_hour + time <= 12
      return "#{@name} will be closing at #{(open_time_hour+time)}:00AM"
    end

  end

end
