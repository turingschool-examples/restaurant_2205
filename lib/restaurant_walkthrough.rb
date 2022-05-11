require 'time'

class Restaurant
  attr_reader :opening_time, :opening_hour, :closing_time, :closing_hour, :name, :dishes

  def initialize(opening_time, name)
    @name = name
    @opening_time = opening_time
    @opening_hour = opening_time[0, 2].to_i
    @closing_time = ""
    @closing_hour = closing_time[0, 2].to_i
    @hours = 0
    @dishes = []
  end

  def closing_time(open_hours)
    @hours = open_hours
    @closing_time = (opening_hour + hours).to_s + ":00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    (opening_hour..closing_hour).any?(12)
  end

  def announce_closing_time(open_hours)
    @hours = open_hours
    closing_time(open_hours)
    return announcement(:AM) if closing_hour < 12
    return announcement(:PM) if closing_hour >= 12
  end

  def announcement
    {
    AM: "#{name} will be closing at #{closing_time}AM",
    PM: "#{name} will be closing at #{closing_time}PM",
    }
  end
end
