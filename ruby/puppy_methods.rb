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

atticus = Puppy.new

atticus.fetch("ball")

atticus.speak(10)

atticus.roll_over

atticus.dog_years(3)

atticus.shake

puts "-" * 80

class Gymnast

   def flip
    p "*back flip*"
  end

  def jump(x)
    p "*Tuck Jump!*" * x
  end
  
  def initialize
    puts "Initializing new gymnast instance ..."
  end
  
end

Sarah = Gymnast.new