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

words.split(' ').each do |word|
  puts words + 's'

end 
##################

colors = "blue boredom yellow"


puts colors.include?('red')


########

pets = ['cat', 'dog', 'fish', 'lizard']

my_pet = pets[2]

puts("I have a pet #{my_pet}")

