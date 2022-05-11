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

    xit "has a name" do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')
      expect(restaurant.name).to eq("Fuel Cafe")
    end

    xit "has no dishes to start" do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')
      expect(restaurant.dishes).to eq([])
    end

  end

  describe "Iteration 2" do

    xit "has closing time" do
      restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
      restaurant2 = Restaurant.new('16:00', 'Il Poggio')

      expect(restaurant1.closing_time(8)).to eq("18:00")
      expect(restaurant2.closing_time(7)).to eq("23:00")
    end

    xit "can add dishes" do
      restaurant = Restaurant.new('16:00', 'Il Poggio')
      restaurant.add_dish('Burrata')
      restaurant.add_dish('Pizzetta')
      restaurant.add_dish('Ravioli')

      expect(restaurant.dishes).to eq(['Burrata', 'Pizzetta', 'Ravioli'])

    end

  end
end
