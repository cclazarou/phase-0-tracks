# Get user input for the next 8 lines
puts "Please type the hamster's name and press return when done"
h_name = gets.chomp
puts "How loud is the hamster normally? Please use between 1-10"
h_volume = gets.chomp.to_i
puts "What color is the hamster?"
h_color = gets.chomp
puts "Is the hamster a good candidate for adoption? Please use yes or no"
h_adoption = gets.chomp
# Until the user enters value data, loop thru the user input
until h_adoption == true || h_adoption == false
  if h_adoption.downcase == "yes"
    h_adoption = true
  elsif h_adoption.downcase == "no"
    h_adoption = false
   else
    puts "Please use \"yes or \"no"
    h_adoption = gets.chomp
  end
end
# Get last line of user input
puts "How old is the hamster? Estimates are acceptable"
# Convert age to integer and check for blank strings
h_age = gets.chomp
# Until a valid integer or empty string is input, ask for valid input
until h_age.to_i.is_a?(Integer) || h_age == ""
  puts "Please input a valid integer for age, or leave blank"
  h_age = gets.chomp
end
#If age is blank, assign it to nil
if (h_age == "")
  h_age = nil
#Otherwise, the input isn't blank, save the integer value
else
  h_age = h_age.to_i
end

#Output results of the user input
puts "Added Hamster:"
puts "name: #{h_name}"
puts "volume: #{h_volume}"
puts "fur: #{h_color}"
puts "adoptable?: #{h_adoption}"
puts "estimated age: #{h_age}"
