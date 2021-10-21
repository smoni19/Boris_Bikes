class DockingStation
  attr_reader :bike
  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(my_bike)
    fail 'No capacity at docking station' if @bike
    @bike = my_bike
  end
end