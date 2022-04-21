require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it "Gets a bike and checks it's working" do
    bike = subject.release_bike
    expect(bike.working?).to eq(true)
  end

  it "verifies dock_bike method" do
    bike = Bike.new
    expect{subject.dock_bike(bike)}.not_to raise_error
  end

end