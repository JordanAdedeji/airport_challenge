require_relative 'plane'
require_relative 'weather'

class Airport

  attr_reader :planes
  attr_reader :weather

  include Weather

  def initialize
    @planes = []
  end

  def land(plane)
    @weather = randomWeather
    fail 'Weather is stormy' if @weather == "stormy"
    fail 'Airport is full' if @planes.length >= 5
      @planes << plane
  end

  def takeoff(plane)
    @weather = randomWeather
    fail 'Weather is stormy' if @weather == "stormy"
      @planes.delete(plane)
  end

end

airport = Airport.new
plane = Plane.new
4.times {airport.land Plane.new}
airport.land(plane)
b1 = airport.takeoff(plane)

puts airport.planes
