class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(time)
    closing = @opening_time.to_i + time
    closing.to_s.insert(-1, ':00')
  end

  def add_dish (dish)
    @dishes << dish
  end

  def open_for_lunch?
    if @opening_time.to_i >= 12
      false
    else
      true
    end
  end

  def menu_dish_names
    array = []
    @dishes.each do |dish|
      array << dish.upcase
    end
    array
  end

  def announce_closing_time(number)
    closing = closing_time(number)
    if closing.to_i > 12
      new = closing.to_i - 12
      new = new.to_s.insert(-1, ':00PM')
      "#{@name} will be closing at #{new}"
    else
      new = closing.to_s.insert(-1, 'AM')
      "#{@name} will be closing at #{new}"
    end
  end

end

restaurant1 = Restaurant.new('6:00', 'Fuel Cafe')
p restaurant1.announce_closing_time(5)
