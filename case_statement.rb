process_the_loop = [true].sample

if process_the_loop
  loop do
    puts "the loop was processed"
    break
  end

else
  puts "the loop was not processed!"
end 