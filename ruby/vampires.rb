puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
birth_year_from_survey = gets.chomp

puts "Our company cafeteria serves garlic bread.  Should we order some for you?"
garlic_order = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
health_insurance = gets.chomp

#assign value to variables
conclusion = "Not enough data to assess vampire status"
current_year = Date.today.year
birth_year_from_age = current_year - age
#need to check if today is last day of year
is_last_day_of_year = Date.year != Date.next_day.year
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
  if (birth_year_from_age == birth_year_from_survey) || (birth_year_from_age == birth_year_from_age_allowance)
    age_is_right = true
  else
    age_is_right = false
  end
end





