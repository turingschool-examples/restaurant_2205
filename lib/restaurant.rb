class Restaurant
attr_accessor :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []

  end


  def opening_time
  opening_time = "10:00"
  end

  def name
    name = "Fuel Cafe"
  end

  def dishes
    dishes = []
  end




end
