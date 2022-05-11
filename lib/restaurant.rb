require 'time'

class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @closing_time = ""
    @name = name
    @hours = 0
    @dishes = []
  end

  def closing_time(hours)
    @hours = hours
    time = opening_time[0, 2]
    closing = (time.to_i + hours).to_s
    @closing_time << (closing + ":00")
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    open = @opening_time[0,2].to_i
    close = @closing_time[0,2].to_i
    hours = (open..close)
    hours.any?(12)
  end

  def announce_closing_time(hours)
    @hours = hours
    time = opening_time[0,2].to_i + hours
    if time > 12
      time = (time - 12).to_s + ":00PM"
    else
      time = time.to_s + ":00AM"
    end
    puts "#{name} will be closing at #{time}"
  end
end
