require 'docking_station'
require 'bike'

describe DockingStation do

  # before do
  #   subject.dock_bike(Bike.new)
  # end

  it 'is of class DockingStation' do
    expect(subject).to be_instance_of DockingStation
  end

  it 'should get a bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'expects the bike to be working' do
    expect(subject.release_bike.working?).to eq(true)
  end

  it { is_expected.to respond_to(:release_bike) }

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike

  end

  # it "raises an error when release_bike is called" do
  #   expect {subject.release_bike}.to raise_error
  # end

end
