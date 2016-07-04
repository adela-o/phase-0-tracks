#	module Shout
#	  def self.yell_angrily(words)
#	    words + "!!!" + " :("
#	  end
	  # add yelling happily
#	  def self.yelling_happily(words)
#	  	words + "!!!" + ":D"
#	  end
#	end

	# Driver Code
#	puts Shout.yell_angrily("ARRRGGGGHHHH!")
#	puts Shout.yelling_happily("Yippe")

#RELEASE 3: 
# 1) Write two classes representing anything that might shout, 
# and include the Shout module in those classes.
# 2) Test your work by adding driver code at the bottom of the 
# file that instantiates instances of your classes and calls the 
# two module methods on each instance.

module Shout
	def yell_loudly(words)
		"#{words.upcase}!"
	end

	def yell_excitedly(words)
		"#{words.swapcase}!!!!!!!"	+ ":D" * 5	
	end
	
end

class Parent
	include Shout
end

class DBCStudent
	include Shout
end

parent = Parent.new
puts parent.yell_loudly("do your homework")

dbcstudent = DBCStudent.new
puts dbcstudent.yell_excitedly("sOmEthInG JUST clicked")

