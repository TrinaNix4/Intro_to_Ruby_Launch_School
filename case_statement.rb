def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "no match"
  end
end

check_in('match')