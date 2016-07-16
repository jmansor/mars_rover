require 'spec_helper'

RSpec.describe MarsRover::RoverController do

  before(:each) do
    @rover_controller = MarsRover::RoverController.new
  end

  describe '#move' do
    it 'should return the new rover position' do
      rover_position = MarsRover::Rover.new(1, 2, 'N')

      new_position = @rover_controller.move(rover_position)

      expect(new_position.x).to eq(1)
      expect(new_position.y).to eq(3)
      expect(new_position.orientation).to eq('N')

      rover_position = MarsRover::Rover.new(1, 2, 'E')

      new_position = @rover_controller.move(rover_position)

      expect(new_position.x).to eq(2)
      expect(new_position.y).to eq(2)
      expect(new_position.orientation).to eq('E')
    end
  end
end
