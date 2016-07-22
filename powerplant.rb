def power_plants(number_of_cities, power_range)
  cities = Array.new(number_of_cities, 0)

  cities[0 + power_range] = 1
  current_city_idx = cities.index(1) # first powered city

  until current_city_idx == cities.length - 1
    unless cities[current_city_idx + (power_range * 2)].nil?
      cities[current_city_idx + (power_range * 2) + 1] = 1
      current_city_idx += (power_range * 2)
    else
      cities[current_city_idx + power_range] = 1
      current_city_idx += power_range
    end
  end

  cities
end



p power_plants(10, 2)
