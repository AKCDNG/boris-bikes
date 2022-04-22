require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it "Gets a bike and checks it's working" do
    bike = Bike.new
    expect(bike.working?).to eq(true)
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument}


  it "raise an error if trying to release a bike when none" do
    expect{subject.release_bike}.to raise_error ('WRONG!!')
  end

  it "raise an error when trying to dock a bike whilst docking station is full" do
    DockingStation::DEFAULT_CAPACITY.times {subject.dock_bike(Bike.new)}
    expect{subject.dock_bike(Bike.new)}.to raise_error ("Error, dock station is full.")
  end

  it "allow user to set a capacity variable" do
    expect{DockingStation.new(10)}.not_to raise_error
  end

  it "default capacity is 20" do
    expect(DockingStation.new.capacity).to eq(20)
  end
end