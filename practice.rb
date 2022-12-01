arr = [1, 3, 5, 7, 9]
number = 3
arr.each do |num|
  if num == number
  puts "#{number} is in the array"
  end
end 


if arr.include?(number)
  puts "#{number} is in the array."
end 

irb :011 > a = [1, 2, 3]
irb :012 > a.map { |x| x**2 }
=> [1, 4, 9]
