require_relative "bike"

class DockingStation
  DEFAULT_CAPACITY = 20

  #attr_reader :DEFAULT_CAPACITY

  def initialize
    @bikes_arr = []
  end

  def release_bike
    fail 'No bikes available' if self.empty?
    @bikes_arr.pop
  end

  def dock(docked_bike)
    fail 'No capacity at docking station' if self.full?
    @bikes_arr << docked_bike
    docked_bike
  end

  private
  
  def full?
    @bikes_arr.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes_arr.empty?
  end
end