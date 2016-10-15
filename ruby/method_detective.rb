# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "CULPRIT A"
#method inverts case
varA = "iNvEsTiGaTiOn"
#set testing variable
varA_copy = varA

culpritA1 = varA_copy.swapcase
puts "output: #{culpritA1}"
puts "original after output: #{varA_copy}"

#same as .swapcase but changes the input to match return
#reset testing variable
varA_copy = varA
culpritA2 = varA_copy.swapcase!
puts "output: #{culpritA2}"
puts "original after output: #{varA_copy}"
# => “InVeStIgAtIoN”

puts "CULPRIT B"
#method finds substring and substitutes with new substring
varB = "zom"
varB_copy = varB

culpritB1 = varB_copy.sub("o","oo")
puts "output: #{culpritB1}"
puts "original after output: #{varB_copy}"

varB_copy = varB
culpritB2 = varB_copy.sub!("o","oo")
puts "output: #{culpritB2}"
puts "original after output: #{varB_copy}"
# => “zoom”

puts "CULPRIT C"
# method centers string and pads left and right if width given is larger than input string
varC = "enhance"
varC_copy = varC

culpritC1 = varC_copy.center(15)
puts "output: #{culpritC1}"
puts "original after output: #{varC_copy}"
# => "    enhance    "

# method changes lower to upper case in string
varD = "Stop! You're under arrest!"
varD_copy = varD

puts "CULPRIT D"
#method changes all lower case in string to upper case
culpritD1 = varD_copy.upcase
puts "output: #{culpritD1}"
puts "original after output: #{varD}"

varD_copy = varD
culpritD2 = varD_copy.upcase!
puts "output: #{culpritD2}"
puts "original after output: #{varD_copy}"
# => "STOP! YOU’RE UNDER ARREST!"

puts "CULPRIT E"
# method that appends new string to old string
varE = "the usual"
varE_copy = varE

culpritE1 = varE_copy + " suspects"
puts "output: #{culpritE1}"
puts "original after output: #{varE_copy}"

varE_copy = varE
culpritE2 = varE_copy << " suspects"
puts "output: #{culpritE2}"
puts "original after output: #{varE_copy}"
#=> "the usual suspects"

puts "CULPRIT F"
#method that prepends new string to old string
varF = " suspects"
varF_copy = varF

culpritF1 = varF_copy.prepend("the usual")
puts "output: #{culpritF1}"
puts "original after output: #{varF_copy}"
# => "the usual suspects"

puts "CULPRIT G"
#method that chops off last character in string"
varG = "The case of the disappearing last letter"
varG_copy = varG

culpritG1 = varG_copy.chop
puts "output: #{culpritG1}"
puts "original after output: #{varG_copy}"

#same as .chop but returns nil if input string is empty
varG_copy = varG
culpritG2 = varG_copy.chop!

puts "output: #{culpritG2}"
puts "original after output: #{varG_copy}"
# => "The case of the disappearing last lette"

puts "CULPRIT H"
varH = "The mystery of the missing first letter"
varH_copy = varH

#deletes a substring that you specify
culpritH1 = varH_copy.delete("T")
puts "output: #{culpritH1}"
puts "original after ouput: #{varH_copy}"

varH_copy = varH
culpritH2 = varH_copy.delete!("T")
puts "output: #{culpritH2}"
puts "original after ouput: #{varH_copy}"

#returns a substring at a given index. BUT it deletes a substring at a specified index, so I'm counting it as a possible culprit
varH_copy = varH
culpritH3 = varH_copy.slice!(0)
puts "output: #{culpritH3} - see comment in code"
puts "original after ouput: #{varH_copy} - in this case, the input string becomes the desired new string, but the actual return of the method is not what we want"
# => "he mystery of the missing first letter"

puts "CULPRIT I"
varI = "Elementary,    my   dear        Watson!"
varI_copy = varI

#removes extra whitespace
culpritI1 = varI_copy.squeeze(" ")
puts "output: #{culpritI1}"
puts "original after ouput: #{varI_copy}"

#same as .squeeze but changes input to match return, and returns nil if no changes were made
varI_copy = varI
culpritI2 = varI_copy.squeeze!(" ")
puts "output: #{culpritI2}"
puts "original after ouput: #{varI_copy}"
# # => "Elementary, my dear Watson!"

puts "CULPRIT J"
varJ = "z"
varJ_copy = varJ

#turns character in string into its ASCII number analog"
culpritJ1 = varJ.codepoints
puts "output: #{culpritJ1}"
puts "original after ouput: #{varJ_copy}"
# => 122
# Q: (What is the significance of the number 122 in relation to the character z?)
# A: 122 is z's "codepoint", meaning its numeric representation

puts "CULPRIT K"
varK = "How many times does the letter 'a' appear in this string?"
varK_copy = varK

culpritK1 = varK_copy.count("a")
puts "output: #{culpritK1}"
puts "original after ouput: #{varK_copy}"
# # => 4