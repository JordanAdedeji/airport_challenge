require 'airport.rb'

describe Airport do

  it 'can land a plane' do
    plane = Plane.new
    airport = Airport.new
    airport.land(plane)
    expect(airport.planes[-1]).to eq plane
  end

  it 'plane can takeoff' do
    plane = Plane.new
    airport = Airport.new
    airport.land(plane)
    expect(airport.takeoff(plane)).to eq plane
  end
end
