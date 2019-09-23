require 'airport.rb'

describe Airport do

  it 'can land a plane' do
    plane = Plane.new
    airport = Airport.new
    allow(airport).to receive(:randomWeather).and_return('clear')
    airport.land(plane)
    expect(airport.planes[-1]).to eq plane
  end

  it 'plane can takeoff' do
    plane = Plane.new
    airport = Airport.new
    allow(airport).to receive(:randomWeather).and_return('clear')
    airport.land(plane)
    expect(airport.takeoff(plane)).to eq plane
  end

  it 'prevent takeoff when weather is stormy' do
    airport = Airport.new
    plane = Plane.new
    allow(airport).to receive(:randomWeather).and_return('stormy')
    expect{airport.takeoff(plane)}.to raise_error 'Weather is stormy'
  end

  it 'prevent landing when weather is stormy' do
    airport = Airport.new
    plane = Plane.new
    allow(airport).to receive(:randomWeather).and_return('stormy')
    expect{airport.land(plane)}.to raise_error 'Weather is stormy'
  end

  it 'raises error when the airport is full' do
    airport = Airport.new
    plane = Plane.new
    allow(airport).to receive(:randomWeather).and_return('clear')
    5.times {airport.land Plane.new}
    expect{airport.land(plane)}.to raise_error 'Airport is full'
  end
end
