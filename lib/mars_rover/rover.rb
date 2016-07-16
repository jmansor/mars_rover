module MarsRover
  class Rover
    attr_accessor :x, :y, :orientation

    def initialize(x, y, orientation)
      @x = x
      @y = y
      @orientation = orientation
    end
  end
end