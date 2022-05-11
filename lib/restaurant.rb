class Restaurant

  attr_accessor :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    o_time = @opening_time.gsub(":00","")
    c_time = o_time.to_i + hours.to_i
    c_time.to_s + ":00"
  end

  def announce_closing_time(hours)
    o_time = @opening_time.gsub(":00","")
    c_time = o_time.to_i + hours
    if c_time > 12
      (closing_time = c_time - 12;
        announcement = "#{@name} will be closing at " + closing_time.to_s + ":00PM")
    else
      announcement = "#{@name} will be closing at " + c_time.to_s + ":00AM"
    end
    return announcement
  end

  def add_dish(dish_name)
    @dishes << dish_name
  end

  def open_for_lunch?
    o_time = @opening_time.gsub(":00","")
    if o_time.to_i <= 12
      return true
    else
      return false
    end
  end

  def menu_dish_names
    dish_names = []
    @dishes.each do |dish|
      dish_names << dish.upcase
    end
    dish_names
  end
end
