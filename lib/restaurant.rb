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

  def add_dish(dish_name)
    @dishes << dish_name
  end

end
