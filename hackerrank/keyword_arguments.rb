def convert_temp(temperature, input_scale:, output_scale: 'celsius')
  return temperature if input_scale == output_scale

  case output_scale
  when 'celsius' then to_celsius(temperature, input_scale: input_scale)
  when 'kelvin' then to_kelvin(temperature, input_scale: input_scale)
  when 'fahrenheit' then to_fahrenheit(temperature, input_scale: input_scale)
  else puts 'invalid input'
  end
end

def to_celsius(tmp, input_scale:)
  input_scale == 'kelvin' ? tmp - 273.15 : (tmp - 32) / 1.8000
end

def to_kelvin(tmp, input_scale:)
  input_scale == 'celsius' ? tmp + 273.15 : ((tmp - 32) / 1.800) + 273.15
end

def to_fahrenheit(tmp, input_scale:)
  if input_scale == 'celsius'
    (tmp * 1.8000) + 32
  else
    ((tmp - 273.15) * 1.8000) + 32
  end
end

puts convert_temp(18, input_scale: 'celsius', output_scale: 'kelvin')
