class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def closing_time(time)
    #figure out later need to move on
    time.to_s
    @time = time + @opening_time
  end

  def open_for_lunch
    if @opening_time == '10:00'
      return true
    else
      return false
    end
  end

  def menu_dish_names
    dish_upcased = []
    @dishes.each do |dish_upcased|
      dish_upcased.upcase!
    end
  end
end
