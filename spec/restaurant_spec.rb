require './lib/restaurant'

RSpec.describe Restaurant do
  describe "Iteration 1" do
    it "exists" do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')
      expect(restaurant).to be_an_instance_of Restaurant
    end

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
      expect(restaurant1.opening_time).to eq("10:00")
      expect(restaurant2.closing_time(7)).to eq("23:00")
      expect(restaurant2.opening_time).to eq("16:00")
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

    it "is open for lunch if opening time is before 12:00 " do
      restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
      restaurant2 = Restaurant.new('16:00', 'Il Poggio')

      expect(restaurant1.open_for_lunch?).to eql(true)
      expect(restaurant2.open_for_lunch?).to eql(false)
    end

    it "return a list of dish names, IN ALL CAPS if restaraunt opens before 12:00" do
      restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
      restaurant2 = Restaurant.new('16:00', 'Il Poggio')

      restaurant1.add_dish('Burrata')
      restaurant1.add_dish('Pizzetta')
      restaurant1.add_dish('Ravioli')

      restaurant2.add_dish('Rigatoni')
      restaurant2.add_dish('Macaroni')
      restaurant2.add_dish('Gnocchi')

      expect(restaurant1.dishes).to eql(['BURRATA', 'PIZZETTA', 'RAVIOLI'])
      expect(restaurant2.dishes).to eql(['Rigatoni', 'Macaroni', 'Gnocchi'])
    end

  end

    describe "Iteration 4" do

      it "announces a closing time in 12 hour format" do
        restaurant1 = Restaurant.new('6:00', 'Fuel Cafe')
        restaurant2 = Restaurant.new('16:00', 'Il Posto')
        expect(restaurant1.announce_closing_time(5)).to eql("Fuel Cafe will be closing at 11:00AM")
        expect(restaurant2.announce_closing_time(7)).to eql("Il Posto will be closing at 11:00PM")
        expect(restaurant1.opening_time).to eq("6:00")
        expect(restaurant2.opening_time).to eq("16:00")

      end
    end

end
