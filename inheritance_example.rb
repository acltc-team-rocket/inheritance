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

class Car < Vehicle

  def initialize
    super
    @fuel = 50
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

class MountainBike < Bike
  def vroom
    puts "Vroooooooooom"
  end
end

car = Car.new
bike = Bike.new

mtbike = MountainBike.new
mtbike.vroom
