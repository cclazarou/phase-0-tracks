require 'date'

#VARIABLES
  conclusion = "Results inconclusive"
  current_year = Date.today.year

  #need to check if today is last day of year
  is_last_day_of_year = Date.today.year != Date.today.next_day.year
  age_is_right = nil
  allergy = nil

# SURVEY
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

  puts "Please tell us what allergies you have.  If you have multiple allergies, type one allergy, hit enter/return, then type the next allergy, etc.  Please type 'done' when you are finished."
  allergy = gets.chomp

  # continue asking for allergies
  while allergy != "done"

    puts "Next allergy:"
    allergy = gets.chomp

    if allergy == "sunshine"
      conclusion = "Probably a vampire"
      break
    end

  end

#AGE CHECK

  #calculate birth year according to age recieved in survey
  birth_year_from_age = current_year - age.to_i

  #if staff member is surveyed before birthday, allow for leeway in stated birth year (1 year earlier)
  birth_year_from_age_allowance = birth_year_from_age-1

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

#end number of employees FOR loop
end


