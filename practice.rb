
pw = 'defiefnei'

loop do
puts "Please enter password to proceed"
password_try = gets.chomp
break if password_try == pw
puts "Invalid password. Please try again."
end

puts "Welcome!"