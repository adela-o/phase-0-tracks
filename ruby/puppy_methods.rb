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

puts "-" * 80

# new class
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

# initialize
Sarah = Gymnast.new

# release 2 
index = 0
gymnast_arry = []

def gymnast_arry(gymnast)
  gymnast_arry.push(gymnast)
  
end
p gymnast_arry

while index < 50 do 
   index += 1
end 



# test code
Sarah.flip

Sarah.jump(7)

