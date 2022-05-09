require 'rspec'
require 'pry'
require 'simplecov'
SimpleCov.start
require './lib/restaurant'


RSpec.configure do |config|
  config.default_formatter = 'doc'
end

RSpec.describe 'Restaurant Spec Harness' do
  before :each do
    @restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
    @restaurant2 = Restaurant.new('16:00', 'Il Poggio')
    @restaurant3 = Restaurant.new('12:00', 'Tims')
  end

  describe 'Iteration 1' do
    it '1. Restaurant Instantiation' do
      expect(Restaurant).to respond_to(:new).with(2).argument
      expect(@restaurant1).to be_an_instance_of(Restaurant)
    end

    it "2. Has opening_time" do
      expect(@restaurant1).to respond_to(:opening_time).with(0).argument
      expect(@restaurant1.opening_time).to eq('10:00')
      expect(@restaurant2.opening_time).to eq('16:00')
    end

    it "3. Has Name" do
      expect(@restaurant1).to respond_to(:name).with(0).argument
      expect(@restaurant1.name).to eq('Fuel Cafe')
      expect(@restaurant2.name).to eq('Il Poggio')
    end

    it "4. Has empty dishes" do
      expect(@restaurant1).to respond_to(:dishes).with(0).argument
      expect(@restaurant1.dishes).to eq([])
      expect(@restaurant2.dishes).to eq([])
    end



  end

  describe 'Iteration 2' do
    it '5. Restaurant #add_dish' do
      expect(@restaurant1).to respond_to(:add_dish).with(1).argument

      @restaurant1.add_dish('Burrata')
      @restaurant1.add_dish('Pizzetta')
      @restaurant1.add_dish('Ravioli')

      expect(@restaurant1.dishes).to eq(['Burrata', 'Pizzetta', 'Ravioli'])
    end

    it '6. Restaurant #closing_time' do
      expect(@restaurant1).to respond_to(:closing_time).with(1).argument
      expect(@restaurant1.closing_time(5)).to eq('15:00')
    end
  end

  describe 'Iteration 3' do
    it '7. Restaurant #open_for_lunch?' do
      expect(@restaurant1).to respond_to(:open_for_lunch?).with(0).argument
      expect(@restaurant1.open_for_lunch?).to eq(true)
      expect(@restaurant2.open_for_lunch?).to eq(false)
      expect(@restaurant3.open_for_lunch?).to eq(false)
    end

    it '8. Restaurant #menu_dish_names' do
      expect(@restaurant1).to respond_to(:menu_dish_names).with(0).argument

      @restaurant1.add_dish('Burrata')
      @restaurant1.add_dish('Pizzetta')
      @restaurant1.add_dish('Ravioli')

      expect(@restaurant1.menu_dish_names).to eq(['BURRATA', 'PIZZETTA', 'RAVIOLI'])
    end
  end

  describe 'Iteration 4' do
    it '9. Restaurant #announce_closing_time' do
      expect(@restaurant1).to respond_to(:announce_closing_time).with(1).argument
      expect(@restaurant1.announce_closing_time(5)).to eq('Fuel Cafe will be closing at 3:00PM')
      expect(@restaurant2.announce_closing_time(5)).to eq('Il Poggio will be closing at 9:00PM')
    end
  end
end
