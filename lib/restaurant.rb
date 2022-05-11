class Restaurant

  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time,name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(time)
    open_time_hour = @opening_time[0,2]
    "#{open_time_hour.to_i + time}"+":00"
  end

end
