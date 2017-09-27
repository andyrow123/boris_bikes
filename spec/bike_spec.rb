
require 'bike'

describe Bike do

  it { should respond_to(:working?) }

  it 'is of class Bike' do
    expect(subject).to be_instance_of Bike
  end


end