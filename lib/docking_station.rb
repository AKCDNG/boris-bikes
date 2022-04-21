require_relative "bike.rb"

class DockingStation

  def initialize
    @bikes = []
  end
  
  def release_bike
    fail 'WRONG!!' if empty?
    @bikes.pop
  end

  def dock_bike(bike)
    fail "Error, dock station is full." if full?
    @bikes << bike
  end

  private

  def full?
    return true if @bikes.count >= 20
    false
  end

  def empty?
    return true if @bikes.empty?
    false
  end
end