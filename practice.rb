first_name = 'John'
last_name = 'Doe'

full_name = "#{first_name}" + " " + "#{last_name}"

puts full_name

#########

state = 'tExAs'

state.capitalize!
puts state  

##############

words = 'car human elephant airplane'

words.split(' ').each do |words|
  puts words + 's'

end 

