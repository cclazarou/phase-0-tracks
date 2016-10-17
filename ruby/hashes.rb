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
name_input = gets.chomp

puts "age:"
age_input = gets.chomp

puts "decor theme:"
theme_input = gets.chomp

puts "are they a jerk? please type y or n"
jerk_input = gets.chomp

#type conversion
age = age.to_i
jerk_input = to_b(jerk_input)

#create hash

client = {
  name: name_input,
  age: age_input,
  theme: theme_input,
  jerk: jerk_input
}


