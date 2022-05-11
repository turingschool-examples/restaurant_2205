class Restaurant
  attr_reader :opening_time,
              :name
              :dishes
  def initialize(opening_time,name)
    @opening_time="10:00"
    @name= "Fuel Cafe"
    @dishes=[]
    end
    def closing_time(closing)
      @closing_time << "16:00"
    end
  end
