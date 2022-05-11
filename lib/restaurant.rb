class Restaurant
attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = "10:00"
    @name = name
    @dishes = []
  end


end
