module Weather
  def randomWeather
    weather = %w[sunny bright grey showers warm clear
      cold rainy stormy]
    weather[rand(9)]
  end
end
