class Restaurant

  attr_reader :opening_time, :name, :dishes, :closing_time, :menu_dish_names

 def initialize (opening_time, name)
   @opening_time = opening_time
   @name = name
   @closing_time = []
   @dishes = []
   @menu_dish_names = []

 end
## I changed the code got stuck and now it works but wont
#work with 24 hr time
 def closing_time(time)
   @closing_time = time
 end

 def add_dish (dish)
   @dishes << dish
 end

 def menu_dish_names(x)
   @menu_dish_names << x
 end

end


print "m is cool"
