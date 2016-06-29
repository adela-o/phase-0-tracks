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
  
    def initialize
    puts "Initializing new puppy"
  end
  
end

spot = Puppy.new