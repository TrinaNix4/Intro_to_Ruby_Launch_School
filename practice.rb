sun = ["visible", "hidden"].sample

puts "the sun is so bright!" if sun == 'visible'
puts "the cloud are blocking the sun!" unless sun == 'visible'