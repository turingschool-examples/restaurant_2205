class Restaurant

  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time,name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

end
