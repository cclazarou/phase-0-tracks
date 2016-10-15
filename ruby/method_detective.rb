# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

#method inverts case
varA = "iNvEsTiGaTiOn"
culpritA1 = varA.swapcase
puts "output: #{culpritA1}"
puts "original after output: #{varA}"
#swapcase! changes the receiver to match the method's return
culpritA2 = varA.swapcase!
puts "output: #{culpritA2}"
puts "original after output: #{varA}"
# => “InVeStIgAtIoN”

#or method finds character in string and substitutes with other character/s
varB = "zom"
culpritB1 = varB.sub("o","oo")
puts "output: #{culpritB1}"
puts "original after output: #{varB}"
culpritB2 = varB.sub!("o","oo")
puts "output: #{culpritB2}"
puts "original after output: #{varB}"
# => “zoom”

# method centers string and pads left and right if width given is larger than input string
varC = "enhance"
culpritC1 = varC.center(15)
puts "output: #{culpritC1}"
puts "original after output: #{varC}"
# => "    enhance    "

# method changes lower to upper case in string
varD = "Stop! You're under arrest!"
culpritD1 = varD.upcase
puts "output: #{culpritD1}"
puts "original after output: #{varD}"
culpritD2 = varD.upcase!
puts "output: #{culpritD2}"
puts "original after output: #{varD}"
# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"

# method that adds a string to the end of a string
varE = "the usual"
culpritE1 = varE + " suspects"
puts "output: #{culpritE1}"
puts "original after output: #{varE}"
culpritE2 = varE << " suspects"
puts "output: #{culpritE2}"
puts "original after output: #{varE}"
#=> "the usual suspects"

# " suspects".<???>
# => "the usual suspects"

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
# => 122
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4