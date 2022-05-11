class Restaurant
  attr_reader :opening_time, :name, :dishes, :run_time

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    @run_time = run_time
  end

  def add_dish(dishes)
    @dishes << dishes
  end

  def closing_time(run_time)
    integer_opening_time = opening_time.to_i
    integer_opening_time.to_i + run_time
    "#{integer_opening_time + run_time}:00"
  end

end
