class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    closing = @opening_time.to_i + hours
    "#{closing}:00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch
    @opening_time.to_i < 12
  end

  def menu_dish_names
    @dishes.map {|caps| caps.upcase}
    # capitalized_dish_names = []
    # @dishes.each do |caps|
    #   capitalized_dish_names << caps.upcase
    # end
    # return capitalized_dish_names
  end

  def announce_closing_time(hours)
    if closing_time(hours).to_i >= 13
      "#{@name} will be closing at #{closing_time(hours).to_i - 12}:00PM"
    else
      "#{@name} will be closing at #{closing_time(hours).to_i}:00AM"
    end
  end
end
