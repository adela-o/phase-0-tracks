module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  # add yelling happily
  def self.yelling_happily(words)
  	words + "!!!" + ":D"
  end
end

# Driver Code
puts Shout.yell_angrily("ARRRGGGGHHHH!")
puts Shout.yelling_happily("Yippe")