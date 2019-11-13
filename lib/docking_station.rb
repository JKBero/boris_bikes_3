
class DockingStation
  attr_reader :bike

  def release_bike
    fail "No bikes available" unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end

def bike
  @bike
end

end

station = DockingStation.new
bike = Bike.new
station.dock(bike)
station.release_bike
