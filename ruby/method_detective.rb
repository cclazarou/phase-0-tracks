# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

#method inverts case
varA = "iNvEsTiGaTiOn"
culpritA1 = varA.swapcase
puts "output: #{culpritA1}"
puts "original after method is called: #{varA}"
#swapcase! changes the receiver to match the method's return
culpritA2 = varA.swapcase!
puts "output: #{culpritA2}"
puts "original after method is called: #{varA}"
# => “InVeStIgAtIoN”

#method finds the second character in the string, then repeats the second character
#or method finds second character then substitutes with two of second character
varB = "zom"
culpritB1 = varB.sub("o","oo")
puts "output: #{culpritB1}"
puts "original after output: #{varB}"
culpritB2 = varB.sub!("o","oo")
puts "output: #{culpritB2}"
puts "original after output: #{varB}"
# "zom".<???>
# => “zoom”

# "enhance".<???>
# => "    enhance    "

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
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