def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

#validating whether the input is a valid number
#if not valid, it continues the loop
def read_number
  loop do
  puts "Please enter a positive or negative integer:"
  number = gets.chomp
  return number.to_i if valid_number?(number)
  puts "invalid input  only non-zero integers are allowed"
  end
end

first_number = nil
second_number = nil 

loop do
  first_number = read_number
  second_number = read_number

#verify whether one of these numbers is greater than zero and one is less than zero; order doesn't matter; one should be positive and one negative


# if the product is less than zero, we know we had one positive and one negative so....
  break if first_number * second_number < 0
    puts "Sorry, one integer must be positive and one must be negative"
    puts "Please start over."
end

sum = first_number + second_number

puts "#{first_number} + #{second_number} = #{sum}"

