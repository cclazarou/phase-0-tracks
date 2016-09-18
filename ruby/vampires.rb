require 'date'

puts "How many employees will be processed?"
number_of_employees = gets.chomp.to_i

for i in 1..number_of_employees

  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp

  puts "What year were you born?"
  birth_year_from_survey = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread.  Should we order some for you (y or n)?"
  garlic_order = gets.chomp

  puts "Would you like to enroll in the company's health insurance (y or n)?"
  health_insurance = gets.chomp

  #assign value to variables
  conclusion = "Results inconclusive"
  current_year = Date.today.year
  birth_year_from_age = current_year - age.to_i
  #need to check if today is last day of year
  is_last_day_of_year = Date.today.year != Date.today.next_day.year
  #if staff surveyed before birthday, need to allow for leeway in stated birth year (1 year earlier)
  birth_year_from_age_allowance = birth_year_from_age-1
  age_is_right = nil

  #AGE CHECK
  if is_last_day_of_year
    if
      birth_year_from_age == birth_year_from_survey
      age_is_right = true
    else
      age_is_right = false
    end
  else
    if (birth_year_from_age == birth_year_from_survey) || (birth_year_from_survey == birth_year_from_age_allowance)
      age_is_right = true
    else
      age_is_right = false
    end
  end

  #CONDITIONS
  if age_is_right && (garlic_order == "y" || health_insurance == "y")
    conclusion = "Probably not a vampire"
  end

  if !age_is_right && (garlic_order == "n" || health_insurance == "n")
    conclusion = "Probably a vampire"
  end

  if !age_is_right && garlic_order == "n" && health_insurance == "n"
    conclusion = "Almost certainly a vampire"
  end

  if name == "Drake Cula" || name == "Tu Fang"
    conclusion = "Definitely a vampire"
  end

  puts conclusion

  # puts "is last day of year?"
  # puts is_last_day_of_year
  # puts "is birth year from age same as birth year from survey?"
  # puts birth_year_from_age == birth_year_from_survey
  # puts "what is the birth year from age"
  # puts birth_year_from_age
  # puts "what is birth year from age allowance"
  # puts birth_year_from_age_allowance
  # puts "age is right:"
  # puts age_is_right

#end number of employees FOR loop
end


