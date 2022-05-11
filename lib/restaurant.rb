class Restaurant

attr_reader :opening_time, :name, :dishes, :closing_time, :open_for_lunch
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []

  end

  def closing_time(num)
    (@opening_time.to_i + (num)).to_s + ":00"

  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?(opening_time)
    opening_time < "12:00"

  end


end
