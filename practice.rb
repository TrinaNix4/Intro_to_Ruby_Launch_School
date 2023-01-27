
status = ['awake', 'tired'].sample

alert = if status == 'awake'
  puts "be productive!"
  else
   'go to sleep!'
  end
  
  puts alert