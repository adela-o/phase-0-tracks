# Make class
class Santa

	def speak
		puts "Ho, ho, ho! Haaaaaaaapppppy Holidays! Feliz tiempo de festejar!"		
	end

	def eat_milk_and_cookies
		puts "What kind of cookies do you have for Santa?"
		cookies = gets.chomp
		puts "#{cookies} is my favorite, thank you!"		
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		# add attributes
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age = 0
	end
end

# Driver code
santa = Santa.new("male", "icelandic")
santa.speak
santa.eat_milk_and_cookies
puts "-" * 10
santa = Santa.new("female", "hispanic")
santa.speak
santa.eat_milk_and_cookies