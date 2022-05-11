require 'pry'

class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    # require 'pry'; binding.pry
    close = @opening_time.to_f + hours.to_f
    close_string = '%.2f' % close
    close_string.gsub(".", ":")
  end

  

end
