class Restaurant
  attr_reader :opening_time, :name, :dishes

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

  def open_for_lunch?
    @opening_time.to_i <= 12
  end

  def menu_dish_names
    @dishes.each do |dish|
      dish.upcase
    end
  end

  def announce_closing_time(num)
    if @opening_time.to_i + (num) < 12
  "#{@name} will be closing at #{(@opening_time.to_i + (num)).to_s + ":00AM"}"
else
  "#{@name} will be closing at #{(@opening_time.to_i + (num) - 12).to_s + ":00PM"}"
end
end

end
