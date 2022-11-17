def count_to_zero(number)
  if number <= 0 
    puts number
  else
    puts number
    count_to_zero(number - 1)
  end
end

count_to_zero(-1)
count_to_zero(5)
count_to_zero(20)