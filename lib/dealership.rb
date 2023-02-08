class Dealership

  attr_reader :inventory
  def initialize(name_of_dealership, location)
    @name_of_dealership = name_of_dealership
    @location = location
    @inventory = []
  end

  def inventory_count
    @inventory.count
  end

  def add_car(car)
    inventory << (car)
    return car
  end

  def has_inventory?
    if inventory == []
      false
    else
      true
    end
  end

  def cars_by_make(make)
    count = 0
    inventory.each do 
      if inventory.include?(make) 
        count += 1
      end
    end
    return count
  end
end