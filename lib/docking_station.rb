require_relative "bike.rb"

class DockingStation

  def initialize
    @bikes = []
  end
  
  def release_bike
    fail 'WRONG!!' if @bikes.empty?
    @bikes.pop
  end

  def dock_bike(bike)
    fail "Error, dock station is full." if @bikes.count >= 20
    @bikes << bike
  end
end