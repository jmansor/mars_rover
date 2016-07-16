module MarsRover
  class RoverRotator

    ROTATIONS = {
      'NL' => 'W',
      'WL' => 'S',
      'SL' => 'E',
      'EL' => 'N',
      'NR' => 'E',
      'WR' => 'N',
      'SR' => 'W',
      'ER' => 'S',
    }

    def rotate(current_orientation, rotation)
      ROTATIONS["#{current_orientation}#{rotation}"]
    end
  end
end