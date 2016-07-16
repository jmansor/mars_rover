module MarsRover
  class RoverCommand
    def is_rotation_command?(command)
      %w(L R).include?(command)
    end
  end
end