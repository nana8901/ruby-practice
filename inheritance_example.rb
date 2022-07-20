class Car
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

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  def initialize < Car.initialize
  end

  def brake < Car.brake
  end

  def accelerate < Car.accelerate
  end

  def turn(new_direction) < Car.turn
  end

  def ring_bell
    puts "Ring ring!"
  end
end

honda = Car.new
tricycle = Bike.new
honda.honk_horn
bike.honk_horn