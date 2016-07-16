module MarsRover
  class RoverNavigation

    def initialize(rover_controller, rover_rotator, rover_command)
      @rover_controller = rover_controller
      @rover_rotator = rover_rotator
      @rover_command = rover_command
    end

    def navigate(rover_position, rover_command)
      current_position = rover_position.clone
      rover_command.each do |command|
        if @rover_command.is_rotation_command?(command)
          new_orientation = @rover_rotator.rotate(current_position.orientation, command)
          current_position.orientation = new_orientation
        else
          current_position = @rover_controller.move(current_position)
        end
      end

      current_position
    end
  end
end