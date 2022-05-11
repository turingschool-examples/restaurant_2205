class Restaurant
  attr_reader :opening_time, :name, :dishes, :menu_dish_names
 def initialize(opening_time, name)
   @opening_time = opening_time
   @name = name
   @dishes = []
 end

 def closing_time(hours)
   return "#{@opening_time.to_i + hours}:00"
 end

 def add_dish (dish)
   dishes << dish
 end

 def open_for_lunch
   if @opening_time.to_i < 12
     return true
   else
     return false
   end

 end

 def menu_dish_names
   @menu_dish_names = []

   dishes.each do |dish|
     @menu_dish_names << dish.upcase
   end
    return @menu_dish_names

 end
#couldn't figure the math here!
 # def announce_closing_time(hours)
 #   if (@closing_time(hours) < 12 || @closing_time(hours) > 23)
 #     return "#{@name} will be closing at #{@closing_time(hours)%12}:00AM"
 #   elsif (@closing_time(hours) > 12)
 #     return "#{@name} will be closing at #{(@closing_time(hours)%12}:00PM"
 #
 #   end
 #
 # end
end
