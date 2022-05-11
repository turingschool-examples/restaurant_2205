class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(time)
    (@opening_time.to_i + time).to_s + ":00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    #how do i do this without hard coding?
    if @opening_time < '12:00'
      true
    else
      false
    end
  end

  def menu_dish_names
    @dishes.map do |yell|
      yell.upcase
    end
  end

  def announce_closing_time(time)
    if closing_time(time).to_i < 12
      "#{@name} will be closing at #{(@opening_time.to_i + time).to_s + ":00AM"}"
    else
      "#{@name} will be closing at #{(@opening_time.to_i + time - 12).to_s + ":00PM"}"
    end
  end
end
