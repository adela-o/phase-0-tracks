#Array
favorite_color = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]

favorite_color.each do |color| 
  puts "#{color} is my favorite color"
end

favorite_color.map! do |color|
  color.upcase

end 
  p favorite_color
  
  
##Hash
usa = { California: "Sacramento", Arizona: "Phoenix", Washington: "Olympia", Nevada: "Carson", Oregon: "Salem"}


usa.each do | state, capital |
  puts "#{capital} is the capital of #{state}"

end

p usa