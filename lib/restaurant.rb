class Restaurant
attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    # @announce_closing_time = announce_closing_time
  end

  def closing_time(operating_hours)
    integer_opening_time = opening_time.to_i
    "#{integer_opening_time + operating_hours}:00"
  end

  def add_dish(menu_item)
    @dishes << menu_item
  end

  def open_for_lunch?
    opening_time.to_i < 11
  end

  # def announce_closing_time(time)
  #
  # end
end
