module Weather
  def random_weather
    weather = %w[sunny bright grey showers warm clear
      cold rainy stormy]
    weather[rand(9)]
  end
end
