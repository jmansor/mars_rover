require 'spec_helper'

RSpec.describe MarsRover::RoverCommand do
  describe '#is_rotation_command?' do
    it 'should return true if the command is a rotation command, false otherwise' do

      rover_command = MarsRover::RoverCommand.new

      is_rotation_command = rover_command.is_rotation_command?('L')
      expect(is_rotation_command).to be true
      is_rotation_command = rover_command.is_rotation_command?('R')
      expect(is_rotation_command).to be true
      is_rotation_command = rover_command.is_rotation_command?('M')
      expect(is_rotation_command).to be false
    end
  end
end