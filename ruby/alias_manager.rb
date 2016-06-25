#write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name 
#with it by doing the following:
#1) Swapping the first and last name.
#2) Changing all of the vowels (a, e, i, o, or u) 
#to the next vowel in 'aeiou', and all of the 
#consonants (everything else besides the vowels) 
#to the next consonant in the alphabet. 
#So 'a' would become 'e', 'u' would become 'a', 
#and 'd' would become 'f'.

#use .capitalize! to Modifies str by converting the first character 
#to uppercase and the remainder to lowercase. 
#Returns nil if no changes are made


#1) swap first and last name
def name_swap(name1, name2)
	name2 + name1
end

puts name_swap(" adela", "oseguera")


