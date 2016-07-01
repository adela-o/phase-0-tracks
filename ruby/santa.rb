# MAKE CLASS
class Santa
# REFACTOR 	
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
		@age =  rand(0..978)
	end

	def about
		puts "Santa identifies as #{@gender} and #{@ethnicity} these are his reindeer #{@reindeer_ranking} and is #{@age} years old."
		puts "Santa's reindeer line up is currently #{@reindeer_ranking} "
	end

	# ATTRIBUTE CHANGER
	def celebrate_birthday
		@age += 1
		puts "Santa is #{@age} years old"
	end

	def get_mad_at(reindeer_name)
		favorite_reindeer_order = @reindeer_ranking.index(reindeer_name)
		@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(favorite_reindeer_order))
	end
	# SETTER METHOD *Keeping for reference*
	#def gender=(new_gender)
	#		@gender = new_gender
	#end
	# GETTER METHODS
	#	def age
	#		@age
	#	end
	#	def ethnicity
	#		@ethnicity
	#	end
end
# Method to make breaks in initializations, easier to read when checking
def separator
	puts "-" * 80
end
# TEST CODE
#	santa = Santa.new("male", "icelandic")
#	santa.speak
#	santa.eat_milk_and_cookies
#	santa.about
#	separator
#	santa = Santa.new("female", "hispanic")
#	santa.speak
#	santa.eat_milk_and_cookies
#	santa.about
#	separator
#	santa = Santa.new("attack helicopter", "Mystical Creature (unicorn)")
#	santa.speak
#	santa.eat_milk_and_cookies
# 	santa.about
# TEST SETTERS
#	santa.celebrate_birthday
#	santa.get_mad_at("Rudolph")
#	santa.gender = "Santa now identifies as goldfish"
#	santa.about
# TEST GETTERS
#	puts "Santa is #{santa.age} and is #{santa.ethnicity}"
#	separator

	santas = []
	example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "attack helicopter"]
	example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#	example_genders.length.times do |i|
#	  santas << Santa.new(example_genders[i], example_ethnicities[i])
#	end

# create multiple santas with random age, different genders, and ethnicities

50.times do |new_santa|
	santas << Santa.new(example_genders.sample, example_ethnicities.sample)
	puts "This Santa is #{santas[new_santa].age} years old, and identifies as #{santas[new_santa].gender} and as #{santas[new_santa].ethnicity}."
	separator
end
