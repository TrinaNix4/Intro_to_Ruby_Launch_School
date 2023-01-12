daylight = [true, false].sample

def time_of_day(light)
  puts "it's daytime" if light == true
  puts "it's nighttime!" if light == false

end 

time_of_day(daylight)