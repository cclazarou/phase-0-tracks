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

#SETTER METHODS

#age santa by one year
  def celebrate_birthday
    @age += 1
    puts "My age: #{@age}"
  end

#take reindeer name as argument, move reindeer to last place in rankings:
#1. find reindeer name given as argument, save into variable
#2. remove this reindeer name from array
#3. put reindeer name back into array, but in last position
  def get_mad_at(reindeer_name)
    previous_index = @reindeer_ranking.index(reindeer_name)

    former_hated_reindeer = @reindeer_ranking.last

    # puts "Before switcheroo:"
    # puts @reindeer_ranking

    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name

    # puts "After switcheroo:"
    # puts @reindeer_ranking
  end

#reassign gender from outside class def
  def reassign_gender(real_gender)
    puts "before assignment:"
    puts @gender

    @gender = real_gender

    puts "after assignment:"
    puts @gender
  end

end

#create a few instances of the Santa class, and put it into a new array called santas
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

# #create a new instance of the Santa class called candace, then print its instance variables
# candace = Santa.new("cisgender","filipino")
# candace.about_instance

# #print all members of santas array along with instance variables
# puts "#{santas}"

# #print Class and address of member of santa array at 0 index
# puts "#{santas[0]}"

# #get Santa instance at element 0 in santas array, have them celebrate a birthday
# santas[0].celebrate_birthday

#get Santa instance at element 2 in santas array
#print santas array
#make instance get mad at Dancer
#print santas array again
# puts santas
# santas[2].get_mad_at("Vixen")
# puts santas

#get Santa instance at element 1 in santas array
#print santas array
#reassign gender instance variable
# puts santas
# santas[1].reassign_gender("none of your business")
# puts santas


