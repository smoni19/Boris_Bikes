require_relative "bike"

class DockingStation

#  attr_reader :bike

  def initialize
    @capacity = 20
    @bikes_arr = []
  end

  def release_bike
    fail 'No bikes available' if @bikes_arr.empty?
    @bikes_arr.pop
  end

  def dock(docked_bike)
    fail 'No capacity at docking station' if @bikes_arr.count >= @capacity
    @bikes_arr << docked_bike
    docked_bike
  end
end