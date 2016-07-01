# Release 0: Design a class
# build a spaghetti serving class
# ask what type of noodles
# ask if they want meatballs
# use both of those methods as attributes also

# Release 1: write class based off of design
class Spaghetti
attr_reader :meatballs
attr_accessor :noodle, :cheese

	def initialize(noodle, meatballs)
		puts "Let's make you some spaghetti!!!"
		@noodle = noodle
		@meatballs = rand(2..14) 
		@cheese = ['Parmesan', 'Asiago', 'Mozzarella', 'Havarti']
	end

	def pick_noodle
		puts "What type of noodles do you want?"
		@noodle = gets.chomp
		puts "#{noodle} noodles are a great choice!"
	end

	def add_meatballs
		puts "Do you want to add meatballs? (y/n)"
		meatballs = gets.chomp.downcase
		if meatballs == "y"
			puts "Ok, we'll add #{@meatballs} meatballs."
		else
			puts "One veggie spaghetti comin' up!"
		end
	end	

	def add_cheese
		puts "Would you like us to add a chef's choice of cheese to your dish? (y/n)"
		cheese_add = gets.chomp.downcase
		if cheese_add == "y"
			@cheese = @cheese[rand(@cheese.length)]
			puts "Ok, we'll add the chef's choice of #{@cheese}, it's magical."
		else
			puts "That's fine......cheese hater....."
		end

	end

	def spaghetti_details
		puts "----------Your spaghetti is ready----------"
		puts "For you we have spaghetti with #{@noodle} noodles and #{@meatballs} meatballs sprinkled with #{@cheese}."
		puts "Yummmmy!"

	end


end

# TEST SYNTACTIC SUGAR
# puts "Hi there, you picked #{spaghetti_for_1.noodle} noodles and #{spaghetti_for_1.meatballs} meatballs for your meal today."

# Release 2: Use class in a program
# user should be able to create infinite instances
# prompt user for each attribute, convert to appropriate data type, store in array 

# USER INTERFACE
spaghetti_eaters = []

loop do 

puts "Welcome to Adela's spaghetti factory!"
puts "Would you like some spaghetti? (y/n)"
like_spaghetti = gets.chomp.downcase

	if like_spaghetti == 'y'
	spaghetti_eaters << new_person = Spaghetti.new("", "")	
	new_person.pick_noodle
	new_person.add_meatballs
	new_person.add_cheese
	puts "-" * 43
	else
		puts "Ok then, see you when you do want spaghetti. Arrivederci!"
		break
	end

end

spaghetti_eaters. each do |person|
	person.spaghetti_details
end