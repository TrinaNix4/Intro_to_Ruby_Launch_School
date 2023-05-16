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

my_pets = pets[2..3]
my_pets.pop

puts"I have a pet #{my_pets[0]}"

