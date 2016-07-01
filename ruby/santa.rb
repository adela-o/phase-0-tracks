# Make class
class Santa
attr_reader :age, :ethnicity
attr_accessor :gender

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
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donder", "Blitzen"]
		@age =  0
	end

	def about
		puts "Santa identifies as #{@gender} and #{@ethnicity} these are his reindeer #{@reindeer_ranking} and is #{@age} years old."
	end

	# attribute changer
	def celebrate_birthday
		@age += 1
		puts "Santa is #{@age} years old"
	end

	def get_mad_at(reindeer_name)
		@reindeer = reindeer_name
		puts "Get mad at #{@reindeer}"
	end

	# setter method
	#def gender=(new_gender)
	#		@gender = new_gender
	#end

	# getter methods

	#	def age
	#		@age
	#	end

	#	def ethnicity
	#		@ethnicity
	#	end

end

# Method to make breaks in initializations
def separator
	puts "-" * 40
end

# test code
santa = Santa.new("male", "icelandic")
santa.speak
santa.eat_milk_and_cookies
santa.about
separator

santa = Santa.new("female", "hispanic")
santa.speak
santa.eat_milk_and_cookies
santa.about
separator

#	santas = []
#	example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "attack helicopter"]
#	example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#	example_genders.length.times do |i|
#	  santas << Santa.new(example_genders[i], example_ethnicities[i])
#	end

# Test code for intializations
santa = Santa.new("attack helicopter", "Mystical Creature (unicorn)")
santa.speak
santa.eat_milk_and_cookies
santa.about

# test setters
santa.celebrate_birthday
santa.get_mad_at("Rudolph")
santa.gender = "Santa now identifies as goldfish"
santa.about
# test getters
puts "Santa is #{santa.age} and is #{santa.ethnicity}"
separator


