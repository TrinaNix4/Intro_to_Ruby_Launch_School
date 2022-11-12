def all_caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end 

puts all_caps("dinosaur are cool")
puts all_caps("dinosaur")