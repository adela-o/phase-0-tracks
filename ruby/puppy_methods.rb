class Puppy

   def fetch(toy)
    puts "I brought back the #{toy}!"
  end

  def speak(w)
    puts "Woof!" * w
  end
  
  def  roll_over
    p "*rolls over*"
  end
  
  def dog_years(x)
    p x * 7
  end
  
  def shake
    p "*shakes hand*"
  end
  
  def initialize
    puts "Initializing new puppy instance ..."
  end
  
end

# initialize
atticus = Puppy.new

# test Code
atticus.fetch("ball")

atticus.speak(10)

atticus.roll_over

atticus.dog_years(3)

atticus.shake

puts "-" * 40

# new class
class Gymnast 
  
  def initialize(athlete)
  	@athlete = athlete
  	puts "You made a new gymnast!"
  end
  
  def flip
    p "*back flip*"
  end

  def jump(x)
    p "*Tuck Jump!*" * x
  end
  
  def gold_medal
  	p "*wins gold medal*"
  end
 
end

# initialize
sarah = Gymnast.new("athlete")

# test code
sarah.flip
sarah.jump(7)

# release 2: Make 50 instances of your class. 
# Modify loop so that it stores all instances in a data structure.
# Iterate over the data structure using .each and call the instance. 

gymnast_arry = []

50.times do 
	gymnast_arry << sarah = Gymnast.new("athlete")
	
	end 

gymnast_arry.each do |n|
	n.flip
	n.jump(5)
	n.gold_medal
	end
p gymnast_arry

