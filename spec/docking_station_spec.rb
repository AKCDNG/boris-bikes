require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it "Gets a bike and checks it's working" do
    bike = Bike.new
    expect(bike.working?).to eq(true)
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument}

  it "access array of bikes in docking station" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq(bike)
  end

  it "raise an error if trying to release a bike when none" do
    expect{subject.release_bike}.to raise_error ('WRONG!!')
  end

  it "raise an error when trying to dock a bike whilst docking station is full" do
    bike = Bike.new
    bike2 = Bike.new
    subject.dock_bike(bike)
    expect{subject.dock_bike(bike2)}.to raise_error ("Error, dock station is full.")
  end
end