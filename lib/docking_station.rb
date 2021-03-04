require_relative 'Bike'
class DockingStation
attr_accessor :bike


  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    fail 'Station is full' if @bike
    @bike = bike
  end
end
