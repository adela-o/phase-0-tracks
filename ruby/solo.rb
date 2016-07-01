# Release 0: Design a class
# build a spaghetti serving class
# ask what type of noodles
# ask if they want meatballs
# use both of those methods as attributes also


class Spaghetti
attr_reader :meatballs
attr_accessor :noodle, :cheese

	def initialize(noodle, meatballs)
		puts "Let's make you some spaghetti!!!"
		@noodle = noodle
		@meatballs = rand(2..8)
		@cheese = ['Parmesan', 'Asiago', 'Mozzarella', 'Havarti']
	end

	def pick_noodle
		puts "What type of noodles do you want?"
		noodle = gets.chomp
		puts "#{noodle} noodles are a great choice!"
	end

	def add_meatballs
		puts "Do you want to add meatballs? (y/n)"
		meatballs = gets.chomp.downcase
		if meatballs != "n"
			puts "Ok, we'll add #{@meatballs} meatballs."
		else
			puts "One veggie spaghetti comin' up!"
		end
		
	end

end

# TEST SYNTACTIC SUGAR
# puts "Hi there, you picked #{spaghetti_for_1.noodle} noodles and #{spaghetti_for_1.meatballs} meatballs for your meal today."

# USER INTERFACE
spaghetti_eaters = []

loop do 

puts "Welcome to Adela's spaghetti factory!"
puts "Would you like some spaghetti? (y/n)"
like_spaghetti = gets.chomp.downcase

	if like_spaghetti != 'n'
	spaghetti_eaters << new_person = Spaghetti.new("", "")	
	new_person.pick_noodle
	new_person.add_meatballs
	puts "-" * 80
	else
		puts "Ok then, see you when you do want spaghetti. Arrivederci!"
		break
	end

end
