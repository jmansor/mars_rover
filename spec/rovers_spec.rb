require 'spec_helper'

RSpec.describe MarsRover::RoverNavigation do

  before(:each) do
    rover_controller = MarsRover::RoverController.new
    rover_rotator = MarsRover::RoverRotator.new
    rover_command = MarsRover::RoverCommand.new
    @rover_navigation = MarsRover::RoverNavigation.new(rover_controller, rover_rotator, rover_command)
  end

  describe '#navigate' do
    it 'should return the final position of the rover' do
      rover_position = MarsRover::Rover.new(1, 2, 'N')
      rover_command_list = %w(L M L M L M L M M)

      final_rover_position = @rover_navigation.navigate(rover_position, rover_command_list)

      expect(final_rover_position.x).to eq(1)
      expect(final_rover_position.y).to eq(3)
      expect(final_rover_position.orientation).to eq('N')
    end
  end
end
