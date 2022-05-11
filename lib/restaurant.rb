class Restaurant
  attr_reader :opening_time, :name, :dishes, :closing_time, :new_dish, :opening_time_int, :closing_time_int


  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []


  end

  def closing_time(hours)
    @opening_time_int = opening_time[0,2].to_i
    closing_time_int = opening_time_int + hours
    @closing_time = closing_time_int.to_s + ":00"
  end




  def add_dish(new_dish)
    @dishes = dishes << new_dish
  end


  def open_for_lunch?
  if @opening_time.to_i < 12
       return true
    else
      false
    end
  end

  def menu_dish_names
    capitalized_dishes = []
    @dishes.each do |dish|
      capitalized_dishes << dish.upcase
    end
    capitalized_dishes
  end






end
