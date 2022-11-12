puts "Please enter a number between 0 and 100"

def user_num(num)
  if num >= 0 && num <= 50
    puts "Number is between 0 and 50"
  elsif num >= 51 && num <= 100
    puts "Number is between 51 and 100"
  else num > 100
    puts  "Number is greater than 100"
  end
end 

puts user_num(0)
puts user_num(50)
puts user_num(51)
puts user_num(65)
puts user_num(200)
puts user_num(100)
