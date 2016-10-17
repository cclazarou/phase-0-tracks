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
  jerk_status: jerk_input
}

#print hash for user review
puts "Please review your input"
puts "name: #{client[:name]}"
puts "age: #{client[:age]}"
puts "theme: #{client[:theme]}"
puts "jerk_status: #{client[:jerk_status]}"

#allow user to edit hash
puts "Do you need to edit this record?  Please type y or n"
edit = gets.chomp
edit = to_b(edit)

if edit
  puts "Please type the name of the field you want to edit (use the word before the colon in the client info above)"
#turn user's input into symbol
  user_access_string = gets.chomp.intern
  user_access_symbol = user_access_string.intern

  puts "What would you like to save as this client's #{user_access_string}?"
  client[user_access_symbol] = gets.chomp

  puts "Client #{user_access_string} changed to #{client[user_access_symbol]}"

  puts "Updated Client Record"
  puts "name: #{client[:name]}"
  puts "age: #{client[:age]}"
  puts "theme: #{client[:theme]}"
  puts "jerk_status: #{client[:jerk_status]}"

  puts "Thank you!"
else
  puts "Thank you!"
end

