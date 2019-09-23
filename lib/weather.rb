module Weather
  def randomWeather
    weather = %w[sunny sunny sunny sunny sunny clear
      clear rainy stormy]

    weather[rand(9)]
  end
end
