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
end
