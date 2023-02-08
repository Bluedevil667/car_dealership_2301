require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  it 'has instance of dealership' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership).to be_a Dealership
  end

  it 'has an inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory).to eq([])
  end

  it 'can count inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory_count).to eq(0)
  end

  it 'can add car to inventory' do 
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    
    expect(dealership.add_car(car_1)).to be_a Car
  end

  it 'can count cars in inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    
    expect(dealership.inventory_count).to eq(2)
  end

  it 'can check empty inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.has_inventory?).to be false
  end

  it 'can check inventory has a car' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    dealership.add_car(car_1)

    expect(dealership.has_inventory?).to be true
  end

  it 'can show cars by make' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)

    require 'pry'; binding.pry
    expect(dealership.cars_by_make("Toyota")).to eq([])
  end
end