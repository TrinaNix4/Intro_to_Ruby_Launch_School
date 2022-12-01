top_five_bands = ["Puscifer", "Tool", "A Perfect Circle", "Chelsea Wolfe", "Interpol"]

top_five_bands.each_with_index do |band, index | 
  puts "#{index + 1}. #{band}"
end


arr = [1, 2, 3, 4]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr
