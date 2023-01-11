puts 'how many lines would you like to print. Please enter a number greater than or equal to 3'
input = nil

loop do 
  puts "How many output lines do you want?  Enter a number greater or equal to 3"
input = gets.to_i
break if input >= 3
puts "That's not enough lines"
  end 

while input > 0
  puts "Launch School is the best!"
input -= 1
end 