module MarsRover
  class RoverController
    def move(current_position)
      orientation = current_position.orientation
      new_position = current_position.clone

      case orientation
        when 'N'
          new_position.y +=1
        when 'S'
          new_position.y -=1
        when 'W'
          new_position.x -=1
        when 'E'
          new_position.x +=1
      end

      new_position
    end
  end
end