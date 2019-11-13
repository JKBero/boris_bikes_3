
class DockingStation
  attr_reader :bike_list

  def initialize
    @bike_list = []
  end

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike_list << bike
  end

  def view_bikes
  end

end
