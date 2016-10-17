#prompt user for client info
#convert input to appropriate data type
#create hash with variables given
#print hash
#prompt user to correct client info if necessary
#print hash again, exit

#boolean conversion method
def to_b(str)
  if str == "y"
    return true
  else
    return false
  end
end

#prompt user for client info
puts "Please enter client information"
puts "name:"
name = gets.chomp

puts "age:"
age = gets.chomp

puts "decor theme:"
theme = gets.chomp

puts "are they a jerk? please type y or n"
jerk = gets.chomp

#type conversion
age = age.to_i
jerk = to_b(jerk)

#create hash

puts

