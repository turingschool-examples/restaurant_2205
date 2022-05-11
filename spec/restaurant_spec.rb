require './lib/restaurant'

RSpec.describe Restaurant do
  restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
  restaurant2 = Restaurant.new('16:00', 'Il Poggio')

  describe "Iteration 1" do
    it "exists" do
      expect(restaurant1).to be_an_instance_of Restaurant
    end

    it "has opening time" do
      expect(restaurant1.opening_time).to eq("10:00")
    end

    it "has a name" do
      expect(restaurant1.name).to eq("Fuel Cafe")
    end

    it "has no dishes to start" do
      expect(restaurant1.dishes).to eq([])
    end

  end

  describe "Iteration 2" do

    it "has closing time" do
      expect(restaurant1.closing_time(8)).to eq("18:00")
      expect(restaurant2.closing_time(7)).to eq("23:00")
    end

    it "can add dishes" do
      restaurant2.add_dish('Burrata')
      restaurant2.add_dish('Pizzetta')
      restaurant2.add_dish('Ravioli')

      expect(restaurant2.dishes).to eq(['Burrata', 'Pizzetta', 'Ravioli'])
    end

  end

  describe "Iteration 3" do

    it "can check if restaurant is open for lunch" do
      restaurant1.closing_time(8)
      restaurant2.closing_time(7)

      expect(restaurant1.open_for_lunch?).to eq(true)
      expect(restaurant2.open_for_lunch?).to eq(false)
    end

    it "can add dishes" do
      restaurant1.add_dish('Burrata')
      restaurant1.add_dish('Pizzetta')
      restaurant1.add_dish('Ravioli')

      expect(restaurant1.dishes).to eq(['Burrata', 'Pizzetta', 'Ravioli'])
    end
  end

  describe "Iteration 4" do

    it "can can announce the closing time" do
      restaurant1.closing_time(8)
      restaurant2.closing_time(7)
      # closing1 = restaurant1.announce_closing_time(5)
      # clsoing2 = restaurant2.announce_closing_time(7)

      expect(restaurant1.announce_closing_time(5)).to eq("Fuel Cafe will be closing at 11:00AM")
      expect(restaurant2.announce_closing_time(7)).to eq("Il Posto will be closing at 11:00PM")
    end
  end
end
