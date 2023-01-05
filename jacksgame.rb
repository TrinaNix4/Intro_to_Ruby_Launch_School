loop do puts '>> which monster are you?
 are you? (huggy wuggy/boxy boo/poppy/secret)'
choice = gets.chomp

puts 'youre scary... but i love your hugs!' if choice == 'huggy wuggy'

 puts 'just like the elf movie scene you scare me every time ' if choice == 'boxy boo' 
 puts 'i feel like your lying even tho your not' if choice == 'poppy'

 puts "hey! this is a secret...get off!" if choice == 'secret'
 
   
sleep 10

 puts " so you havent clicked off yet i have a secret *he leans torwards you* ive tried this with other people and they refused.i made this up by myself. pls try it i NEED testers
  the secret code is 5319. you wont regret it *he hands you a paper sheet for you to remember*" #if choice == 'secret'

 puts "please enter secret code" 
 code = gets.chomp

 puts "it says access denied. you look on the back of the paper to see if you did something wrong it says 'congrats i just wasted your time!'" if code ==  "5319"
 
 

end


