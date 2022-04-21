require_relative "bike.rb"

class DockingStation
  attr_reader :bike
  
  def release_bike
    fail 'WRONG!!' unless @bike
    @bike
  end

  def dock_bike(bike)
    fail "Error, dock station is full." if @bike
    @bike = bike
  end
end