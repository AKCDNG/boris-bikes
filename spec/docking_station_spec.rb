require 'docking_station.rb'

describe DockingStation do
  it "releases bike" do
    expect(DockingStation).to respond_to(release_bike)
  end
end