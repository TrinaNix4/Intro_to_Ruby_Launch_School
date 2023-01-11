
pw = 'defiefnei'
username = 'admin'

loop do
  puts 'Please enter username'
  user_name = gets.chomp

  puts "Please enter password"
  password_try = gets.chomp

break if user_name == username && password_try == pw
puts "Authorization failed. Please try again."
end

puts "Welcome!"