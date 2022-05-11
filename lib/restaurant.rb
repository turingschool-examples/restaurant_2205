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

end

restaurant2 = Restaurant.new('16:00', 'Il Posto')
restaurant2.add_dish('Burrata')
restaurant2.add_dish('Pizzetta')
restaurant2.add_dish('Ravioli')

p restaurant2.menu_dish_names
