# Parent Class (or superclass)
class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

# Car is a child class (or subclass) of vehicle
class Car < Vehicle
  def initialize(vehicle_hash)
    super()
    @fuel = vehicle_hash[:fuel]
    @make = vehicle_hash[:make]
    @model = vehicle_hash[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

# Bike is a child class (or subclass) of vehicle
class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

class MountainBike < Bike
  def vroom
    puts "Vroooooooooom!"
  end
end

car = Car.new(fuel: 50, make: "Ford", model: "Mustang")
car.honk_horn

bike = Bike.new
bike.ring_bell

mtbike = MountainBike.new
mtbike.vroom
