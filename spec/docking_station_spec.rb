require 'docking_station'

describe DockingStation.new do
  it 'should instatiate a new docking station' do
    expects(DockingStation.new).to be_valid
  end

  it { should respond_to(:release_bike) }
end
