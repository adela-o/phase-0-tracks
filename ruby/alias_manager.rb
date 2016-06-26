#write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name 
#with it by doing the following:
#1) Swapping the first and last name.
#2) Changing all of the vowels (a, e, i, o, or u) 
#to the next vowel in 'aeiou', and all of the 
#consonants (everything else besides the vowels) 
#to the next consonant in the alphabet. 
#So 'a' would become 'e', 'u' would become 'a', 
#and 'd' would become 'f'.

#Release 1: Provide a User Interface
#Provide a user interface that lets a user enter a name 
#and get a fake name back. Let the user do this repeatedly 
#until they decide to quit by typing 'quit'. 
#(They might just hit Enter to continue.)

def alias_maker(name)
vowels = ["a", "e", "i", "o", "u"]
consonants= ["b", "c", "d", "f", "g", "h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
new_alias = name.split(" ").rotate
swapped_name = new_alias.join(" ")
letters = swapped_name.downcase.split("")

	letters.map! do |letter|
		if letter == " "
			letter = " "
		elsif letter == "z"
			letter = "b"
		elsif letter == "u"
			letter = "a"
		elsif vowels.include?(letter) || consonants.include?(letter)
			if vowels.include?(letter)
				letter = vowels[vowels.index(letter) +1]
			else
				letter = consonants[consonants.index(letter) +1]
			end
		else
			puts "Please enter a valid character."
		end
	end
	new_array = letters.join("")
	new_array.split(" ").map! {|word|	word.capitalize}.join(" ")

end



puts "Please enter a name you would like to convert. When done entering names please type 'quit'."
name = gets.chomp
name_array = []
alias_array = []
loop do
	if name == "quit"
		break
	else
		name_array << name
		alias_array << alias_maker(name)
	end
	puts "Anymore names to enter?"
	name = gets.chomp
end

#Release 2: Use a data structure to store the fake names as they are entered. 
#When the user exits the program, 
#iterate through the data structure and print all of the data the user entered.

i = 0
while i < alias_array.length
	puts " #{alias_array[i]} is actually #{name_array[i]}."
	i += 1
end
