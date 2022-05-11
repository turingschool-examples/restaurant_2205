class Restaurant
  attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours_elapsed)
    opening_hour = opening_time[0..1].to_i
    closing_hour = opening_hour + hours_elapsed
    if closing_hour >= 24
      closing_hour -= 24
    end
    if closing_hour < 10
      closing_time = "0#{closing_hour}:00"
    else
      closing_time = "#{closing_hour}:00"
    end
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    if opening_time[0..1].to_i < 12
      return true
    else
      false
    end
  end

  def menu_dish_names
    capitalized_dishes = []
    dishes.each do |dish|
      capitalized_dishes << dish.upcase
    end
    return capitalized_dishes
  end

  def announce_closing_time(hours_elapsed)
    opening_hour = opening_time[0..1].to_i
    closing_hour = opening_hour + hours_elapsed

    # If statement to handle edge cases of closing hour past midnight
    # e.g. closing_hour > 24
    if closing_hour > 24
      closing_hour = closing_hour % 24
    end

    # If closing hour is 24 (midnight) return 12:00AM
    if closing_hour == 24
      return "#{name} will be closing at #{closing_hour - 12}:00AM"
    # If closing hour is 12 (noon) return 12:00PM
    elsif closing_hour == 12
      return "#{name} will be closing at #{closing_hour}:00PM"
    # If closing hour is before noon, return AM
    elsif closing_hour <= 11
      return "#{name} will be closing at #{closing_hour}:00AM"
    # If closing hour is after noon, return PM
    else
      closing_hour -= 12
      return "#{name} will be closing at #{closing_hour}:00PM"
    end
  end
end
