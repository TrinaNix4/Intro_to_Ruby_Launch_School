say_hello = true
count = 0

while say_hello 
    puts "helloj!"
    count += 1
    say_hello = false if count == 5
end 
