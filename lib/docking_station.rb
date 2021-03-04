require_relative 'Bike'
class DockingStation
attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.length == 0
    @bikes.pop
  end

  def dock(bike)
    fail 'Station is full' if @bikes.length >= 20
    @bikes << bike
  end
end
