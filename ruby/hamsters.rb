puts "What is the hamsters name?"
hamsters_name = gets.chomp

puts "On a scale of 1 to 10 what is your hamsters volume level?"
volume = gets.chomp
volume = volume.to_i

puts "What is your hamsters fur color?"
fur_color = gets.chomp

puts "Is your hamster a good candidate for adoption?(y/n)"
good_candidate = gets.chomp

puts "How old is your hamster?"
age = nil

puts "Hamster name is #{hamsters_name}"
puts "Hamster volume is #{volume}"
puts "Hamster fur color is #{fur_color}"
puts "Hamster canidate for adoption #{good_candidate}"
puts "Hamster age #{age}"