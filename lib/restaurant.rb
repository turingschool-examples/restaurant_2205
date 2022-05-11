class Restaurant
  attr_accessor :name, :opening_time, :dishes, :closing_time
  def initialize(opening_time, name)
      @name = name
      @opening_time = opening_time
      @dishes = []
  end



end
