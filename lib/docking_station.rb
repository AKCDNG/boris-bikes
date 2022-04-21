require_relative "bike.rb"

class DockingStation

  DEFAULT_CAPACITY = 20

  def initialize (capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  attr_reader :capacity
  
  def release_bike
    fail 'WRONG!!' if empty?
    bikes.pop
  end

  def dock_bike(bike)
    fail "Error, dock station is full." if full?
    bikes << bike
  end

  private

  attr_reader :bikes

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end
end