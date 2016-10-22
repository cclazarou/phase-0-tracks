class Santa
  def initialize(gender,ethnicity)
    "Initializing Santa instance"
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaaaaappy holidays"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}"
  end

  def about_instance
    puts "gender #{@gender}"
    puts "ethnicity #{@ethnicity}"
    puts "reindeer_ranking #{@reindeer_ranking}"
    puts "age #{@age}"
  end

end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

candace = Santa.new("cisgender","filipino")

candace.about_instance

#prints all members of santas array along with instance variables
puts "#{santas}"

#prints Class and address
puts "#{santas[0]}"




