# Release 0: Design a class
# build a spaghetti serving class
# ask what type of noodles
# ask if they want meatballs
# use both of those methods as attributes also


class Spaghetti
	def initialize(noodle, meatballs)
		puts "Let's make you some spaghetti!!!"
		@noodle = noodle
		@meatballs = rand(0..6)
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

spaghetti_for_1 = Spaghetti.new("","") 
spaghetti_for_1.pick_noodle
spaghetti_for_1.add_meatballs