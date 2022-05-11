class Restaurant
attr_reader :opening_time, :name, :dishes, :closing_time

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = [] #starts with empty array
    @closing_time = ""

  end

  def closing_time(end_time)
    if 8
      then end_time = "18:00"
    end
    if 7
      then end_time = "23:00"
    end
  end

  def add_dish(flavor)
    @dishes << flavor #pushes new flavor dish to array
  end
end
