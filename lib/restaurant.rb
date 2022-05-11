class Restaurant

  attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []

    @opening_time_integer = @opening_time.to_i
    def closing_time(hours_open)

      closing_time = (@opening_time_integer + hours_open).to_s + ":00"


    end
    end
end
