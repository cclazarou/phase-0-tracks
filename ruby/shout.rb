module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :D"
  end
end

require_relative 'shout'

puts "#{Shout.yell_angrily("This sucks")}"

puts "#{Shout.yell_happily("This is great")}"