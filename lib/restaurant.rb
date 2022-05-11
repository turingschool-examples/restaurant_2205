class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    time_closed = "00:00"
    time_closed[0,2] = opening_time[0,2]
    time_closed[0,2] = (time_closed[0,2].to_i + hours).to_s
    return time_closed
  end

  def add_dish(dish)
    open_for_lunch? == true ? @dishes << dish.upcase : @dishes << dish
  end

  def open_for_lunch?
    @opening_time.chomp(":00").to_i < 12 ? true : false
  end

  def announce_closing_time(hours)
    time_closed = "00:00"
    time_closed[0,2] = opening_time[0,2]
    twelve_hour_format =(time_closed[0,2].to_i + hours)
    am_pm = ""
    twelve_hour_format > 12 ? am_pm = 'PM' : am_pm = 'AM'
    twelve_hour_format > 12 ? twelve_hour_format = twelve_hour_format - 12 : twelve_hour_format
    time_closed[0,2] = (twelve_hour_format).to_s
    "#{name} will be closing at #{time_closed}#{am_pm}"
  end
end

#require 'pry'; binding.pry
