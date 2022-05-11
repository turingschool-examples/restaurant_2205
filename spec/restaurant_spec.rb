require './lib/restaurant'

RSpec.describe Restaurant do
  describe "Iteration 1" do
    it "exists" do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')
      expect(restaurant).to be_an_instance_of Restaurant
    end

    # These tests are skipped - remove the "x" from "xit" so that each test
    # line reads "it" in order to run each test.
    it "has opening time" do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')
      expect(restaurant.opening_time).to eq("10:00")
    end

    it "has a name" do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')
      expect(restaurant.name).to eq("Fuel Cafe")
    end

    it "has no dishes to start" do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')
      expect(restaurant.dishes).to eq([])
    end

  end

  describe "Iteration 2" do

    it "has closing time" do
      restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
      restaurant2 = Restaurant.new('16:00', 'Il Poggio')

      expect(restaurant1.closing_time(8)).to eq("18:00")
      expect(restaurant2.closing_time(7)).to eq("23:00")
    end

    it "can add dishes" do
      restaurant = Restaurant.new('16:00', 'Il Poggio')
      restaurant.add_dish('Burrata')
      restaurant.add_dish('Pizzetta')
      restaurant.add_dish('Ravioli')

      expect(restaurant.dishes).to eq(['Burrata', 'Pizzetta', 'Ravioli'])

    end

  end


  describe "Iteration 3" do

    it "opens for lunch" do
      restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
      restaurant2 = Restaurant.new('16:00', 'Il Poggio')
      expect(restaurant1.open_for_lunch?).to eq(true)
      expect(restaurant2.open_for_lunch?).to eq(false)
    end

    it "has menu style dish names" do

      restaurant2 = Restaurant.new('16:00', 'Il Poggio')
      restaurant2.add_dish('Burrata')
      restaurant2.add_dish('Pizzetta')
      restaurant2.add_dish('Ravioli')
      expect(restaurant2.menu_dish_names).to eq (["BURRATA", "PIZZETTA", "RAVIOLI"])
    end
  end

  describe "Iteration 4" do

    xit "announces the closing time" do
      restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
      expect(restaurant1.announce_closing_time(8)).to eq("6:00")
    end
  end
end
