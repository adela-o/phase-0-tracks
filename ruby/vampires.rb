puts "New Employee Questionnaire"
puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i
current_year = 2016
reported_age = current_year - birth_year

puts "Our company cafeteria serves garlic bread.
Should we order some for you? (Y/N)"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance? (Y/N)"
insurance = gets.chomp
