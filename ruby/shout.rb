module Shout
  # def self.yell_angrily(words)
  #   words + "!!!" + " :("
  # end

  # def self.yell_happily(words)
  #   words + "!!!" + " :D"
  # end

  def yell_angrily(words)
    p words + "!!!" + " :("
  end

  def yell_happily(words)
    p words + "!!!" + " :D"
  end
end

class Adult
  include Shout
  def initialize
    p "an adult has been created"
  end
end

class Child
  include Shout
  def initialize
    p "a child has been created"
  end
end

require_relative 'shout'

# puts "#{Shout.yell_angrily("This sucks")}"

# puts "#{Shout.yell_happily("This is great")}"

new_adult = Adult.new
new_child = Child.new

puts "Adult shouting:"
new_adult.yell_angrily("I am an adult")
new_adult.yell_happily("I am an adult")

puts "Child shouting:"
new_child.yell_angrily("I am a child")
new_child.yell_happily("I am a child")