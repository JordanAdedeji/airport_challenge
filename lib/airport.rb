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
    @weather = random_weather
    fail 'Weather is stormy' if @weather == "stormy"
    fail 'Airport is full' if @planes.length >= 5

    @planes << plane
  end

  def takeoff(plane)
    @weather = random_weather
    fail 'Weather is stormy' if @weather == "stormy"

    @planes.delete(plane)
  end

end
