module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  # add yelling happily
  def self.yelling_happily(words)
  	words + "!!!" + ":D"
  end
end

p Shout.yell_angrily("ARRRGGGGHHHH!")
p Shout.yelling_happily("Yippe")