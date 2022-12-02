def has_a_b?(string)
 if string =~ /b/
   puts "We have a match!"
 else
   puts "No match here."
   end
 end

 has_a_b?("basketball")
 has_a_b?("onion")
 has_a_b?("golf")