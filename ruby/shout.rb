# Release 1: Write a Simple Module
# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happy(words)
#     words + "!!!" + " :)"
#   end

# end

# # driver code

# # p expression = Shout.yell_angrily("I'm angry")
# # p expression = Shout.yelling_happy("I'm happy")

#Release 3: Convert a Standalone Module to a Mixin
module Shout
  # we'll put some methods here soon, but this code is fine for now!

  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happy(words)
    words + "!!!" + " :)"
  end

end

class Mom
  include Shout
end

class Dad
  include Shout
end

expression = Mom.new
p expression.yell_angrily("Go to your room")

expression = Dad.new
p expression.yelling_happy("Let's go get ice cream")

#I made this while sitting in the kitchen with my parents and my father and I found it to be quite hilarious.
