
class DockingStation
  attr_reader :bike

  def initialize
    @bike_count = 0
  end

  def release_bike
    fail "No bikes available" unless @bike
    @bike
  end

  def dock(bike)
    fail "There is no space in the docking station." if @bike_count >= 1
    @bike = bike
    @bike_count += 1
  end

end
