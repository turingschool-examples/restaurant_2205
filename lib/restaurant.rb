class Restaurant

  attr_reader :opening_time,
              :name,
              :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hrs)
    closing_time = @opening_time.to_i + hrs
    closing_time.to_s.concat(':00')
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    @opening_time.to_i < 12
  end

  def menu_dish_names
    menu_dish_names = @dishes.map do |dish|
      dish.upcase
    end
    menu_dish_names
  end


  def announce_closing_time(hrs)
    closing_time_to_12_hrs = @opening_time.to_i + hrs
    if closing_time_to_12_hrs > 12
      closing_time_to_12_hrs -= 12
    end
    closing_time_to_12_hrs = closing_time_to_12_hrs.to_s.concat(':00')

    (@opening_time.to_i + hrs) > 12 ? am_pm = "PM" : am_pm = "AM"

    "#{name} will be closing at #{closing_time_to_12_hrs}#{am_pm}"
  end
end
