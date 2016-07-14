#write a program that will allow an interior designer to enter the details of a given client: 
#the client's name, age, number of children, decor theme, and so on 

#(you can choose your own as long as it's a good mix of string, integer, and boolean data).
#Your keys should be symbols unless you find that you need a string for some reason 
#-- usually only when spaces or other "user friendly" formatting are needed 
#(as in the case of using someone's full name as a hash key).

#Basically, symbols are simpler for programmers to use, and readable enough by technical folks 
#to be used in place of strings most of the time.

#Your program should ...
#Prompt the designer/user for all of this information.
#Convert any user input to the appropriate data type.
#Print the hash back out to the screen when the designer has answered all of the questions.
#Give the user the opportunity to update a key 
#(no need to loop, once is fine). 
#After all, sometimes users make mistakes! 
#If the designer says "none", skip it. 
#But if the designer enters "decor_theme" 
#(for example), your program should ask for a new value and update the :decor_theme key. 
#(Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) 
#You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
#Print the latest version of the hash, and exit the program.

#Keys:
# name, age, number of children, decor theme, 

client = {}
#initiate empty hash to fill

puts "Please answer the following client registration questions"
#get info with gets.chomp

puts "What is your name?"
client[:name] = gets.chomp.to_s

puts "How old are you?"
client[:age] = gets.chomp.to_sym

puts "How many children do you have?"
client[:children] = gets.chomp.to_sym		

puts "What decor theme did you have in mind? Please only list one."
client[:decor_theme] = gets.chomp.to_sym

puts "What is your favorite shade of green?"
client[:green] = gets.chomp.to_sym


p client

puts "Do you want to update any information? If yes, specify the category you want to update. Type done if you do not want to update information"
input = gets.chomp

if input == "done"
	puts "We're all set, thank you!"
elsif update == "name"
	puts "Please input your name"
	client[:name] = gets.chomp
elsif update == "age"
	puts "Please input your age"
	client[:age] = gets.chomp.to_i
elsif update == "children"
	puts "How many children do you have?"
	client[:children] = gets.chomp.to_i
elsif update == "decor_theme"
	puts "What is your  decor theme?"
	client[:decor_theme] = gets.chomp
elsif update == "favorite_color"
	puts "What is your favorite shade of green?"
	client[:favorite_color] = gets.chomp

end 


p client
