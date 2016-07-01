class Santa

	def speak
		puts "Ho, ho, ho! Haaaaaaaapppppy Holidays! Feliz tiempo de festejar!"		
	end

	def eat_milk_and_cookies
		puts "What kind of cookies do you have for Santa?"
		cookies = gets.chomp
		puts "#{cookies} is my favorite, thank you!"		
	end

	def initialize
		puts "Initializing Santa instance ..."

	end
end

santa = Santa.new

santa.speak
santa.eat_milk_and_cookies
