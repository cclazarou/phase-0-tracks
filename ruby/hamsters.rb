# Ask for name
puts "What is the hamster's name?"
name = gets.chomp

# Ask for volume level (1-10)
puts "What is this hamster's volume level (1-10)?"
volume = gets.chomp.to_i

# Ask for fur color
puts "What is the fur color?"
fur_color = gets.chomp

# Ask adoption (t/f)
puts "Is this hamster a good candidate for adoption (y/n)?"
adoption = gets.chomp
if adoption=="y"
  adoption = true
elsif adoption=="n"
  adoption = false
else
  adoption = "invalid input"
end

# Ask age (int)
puts "What is this hamster's age?"
age = gets.chomp

# if age.empty
#   If age is blank, set to nil
# Put age in variable

if age.empty?
  age = nil
else
  age = age.to_i
end

# puts "name #{name.class}"
# puts "volume #{volume.class}"
# puts "fur_color #{fur_color.class}"
# puts "adoption #{adoption.class}"
# puts "age #{age.class}"
