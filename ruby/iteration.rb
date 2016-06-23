##Array
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



#Array
letters = ["a", "b", "c", "d", "e"]
p letters
#Hash
groups = { One: "solo", Two: "pair", Three: "trio", Four: "quartet"}
p groups


# 1) A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
letters.delete_if { | letter| letter != "a" }

p letters

groups.delete_if { |number, name| number == :One}

p groups

# 2) A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

letters.keep_if { | letter| letter == "a" }
p letters

groups.keep_if { |number, name| number == :One}
p groups


# 3) A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
letters.select! { |letter| letter == "a" }

p letters

groups.select! { |number, name| number == :One}
p groups



