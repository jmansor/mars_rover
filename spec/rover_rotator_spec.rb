require 'spec_helper'

RSpec.describe MarsRover::RoverRotator do

  before(:each) do
    @rover_rotator = MarsRover::RoverRotator.new
  end

  describe '#rotate' do
    it 'should return the new orientation depending on the specified rotation' do

      current_orientation = 'N'
      rotation = 'L'
      new_orientation = @rover_rotator.rotate(current_orientation, rotation)

      expect(new_orientation).to eq('W')
    end
  end
end
