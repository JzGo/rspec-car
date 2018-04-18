class Car

  attr_accessor :color
  attr_reader :speed

  def initialize(color)
    @color = color
    @speed = 0
  end

  def accelerate_by(num)
    @speed += num
  end
end
