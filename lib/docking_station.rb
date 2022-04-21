require_relative "bike.rb"

class DockingStation

  DEFAULT_CAPACITY = 20

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
    return true if @bikes.count >= DEFAULT_CAPACITY
    false
  end

  def empty?
    return true if @bikes.empty?
    false
  end
end