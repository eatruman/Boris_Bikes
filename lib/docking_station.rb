require_relative 'Bike'
class DockingStation
  DEFAULT_CAPACITY = 20
attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if self.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Station is full' if self.full?
    @bikes << bike
    @bikes.last
  end

private
  def full?
    if @bikes.length >= DEFAULT_CAPACITY 
      true
    else false
    end
  end

   def empty?
     if @bikes.length == 0
       true
     else false
     end
   end
end
