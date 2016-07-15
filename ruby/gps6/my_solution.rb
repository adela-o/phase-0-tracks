# Virus Predictor

# I worked on this challenge [by myself, with: Bahman Sadiq ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative:
# require_relative is used to load the state data file into our file. Shortcut for require 
# requre give the whole path. 
require_relative 'state_data'

class VirusPredictor
  # Initializes new instance with arguments
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calling two methods
  # Refactor Release: 6
  def virus_effects
#    predicted_deaths(@population_density, @population, @state)
#    speed_of_spread(@population_density, @state)
    ### interpolate into one sentence
 print "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
 end 

  private # Release: 7; all methods that follow will be made private: not accessible for outside objects

  # takes three arguments and calculates predicted deaths for given state with data
  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density
    ## Refactored for Release: 8
    if @population_density >= 200
      (@population * 0.4).floor
    elsif @population_density >= 150
      (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end

   # print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # takes two arguments and calculates the speed of spread for the given state data
  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    ## Refactored for Release: 8
    if @population_density >= 200
        0.5
    elsif @population_density >= 150
        1
    elsif @population_density >= 100
        1.5
    elsif @population_density >= 50
        2
    else
        2.5
    end

   # puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

STATE_DATA.each do |state, data|
  state_name = VirusPredictor.new(state, data[:population_density], data[:population])
  state_name.virus_effects
end


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
- The rocket hash is used because the key is a string and not a symbol. 

What does require_relative do? How is it different from require?
- require_relative allows you to load  a file using from a relative location(same directory), it is a
shortcut for require. To use require you would have to load the whole file path.

What are some ways to iterate through a hash?
- .each and .map will iterate through a hash. If you use .map! you will change the hash.

When refactoring virus_effects, what stood out to you about the variables, if anything?
- They were instance variables so they were available throughout the entire class

What concept did you most solidify in this challenge?
- Iterating through a hash. I needed to step back and take a breath. I knew how to acess the hash
because of our previous assignment, it was just hard to conceptualize (especially in a GPS, while studying 
for the assessment). 
=end