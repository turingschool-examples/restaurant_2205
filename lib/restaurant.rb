class Restaurant


  attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hour)
    close = (@opening_time.to_i + hour)
    close_hours = close.to_s
    hour_format = close_hours.insert(2, ":00")
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
      if @opening_time.to_i > 12
        false
      else
        true
      end
  end

  def menu_dish_names
    @dishes.map {|dish| dish.upcase}
  end

  def announce_closing_time(hour)
    announce_time = (opening_time.to_i)
    close_time = (announce_time + hour)
    change_to_hr = if close_time > 12
      close_time - 12
    end
    hour_format = change_to_hr.to_s.insert(2, ":00")
    am_pm = if announce_time > 12
      "PM"
    else
      "AM"
    end
    return "#{@name} will be closing at #{hour_format}#{am_pm}"
  end
end

# Can't figure out the conditions to make restaurant1 time pass"


# require 'date'
# close_time = opening_time.to_i + hour
# nu_time = close_time.to_s.insert(2, "")
# # require "pry"; binding.pry
# DateTime.parse("#{nu_time}").strftime("%M:%H")
