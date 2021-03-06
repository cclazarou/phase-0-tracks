class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :reindeer_ranking, :age

  def initialize(gender,ethnicity)
    puts "Initializing Santa instance"
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

#GETTER METHODS

# def age
#   @age
# end

# def ethnicity
#   @ethnicity
# end

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

# #reassign gender from outside class def
#   def reassign_gender(real_gender)
#     puts "before assignment:"
#     puts @gender

#     @gender = real_gender

#     puts "after assignment:"
#     puts @gender
#   end

#--class end--
end

#create a few instances of the Santa class, and put it into a new array called santas
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

#1. create a new instance of the Santa class called candace
#2. print its instance variables
candace = Santa.new("cisgender","filipino")
candace.about_instance

#print all members of santas array along with instance variables
puts "#{santas}"

#print Class and address of member of santa array at 0 index
puts "#{santas[0]}"

#1. get Santa instance at index 0 in santas array
#2. make instance celebrate a birthday
santas[0].celebrate_birthday

#1. get Santa instance at index 2
#2. print santas array
#3. make instance get mad at Vixen
#4. print santas
puts "#{santas}"
santas[2].get_mad_at("Vixen")
puts "#{santas}"

# 1. print gender instance at index 1
# 2. reassign gender instance variable of instance at index 1
# 3. print gender instance at index 1
puts santas[1].gender
santas[1].gender = "none of your business"
puts santas[1].gender

# 1. print reindeer_ranking of instance at index 1
# 2. change value of reindeer_ranking of instance at index 1 with get_mad_at method
# 3. print reindeer_ranking of instance at index 1
puts "reindeer_ranking before get_mad_at is called:"
puts santas[1].reindeer_ranking
santas[1].get_mad_at("Dasher")
puts "reindeer_ranking after get_mad_at is called"
puts santas[1].reindeer_ranking

#1. get age of instance at index 4
#2. get ethnicity of instance at index 4
puts santas[4].age
puts santas[4].ethnicity

#1. get age of instance at index 0
#2. get ethnicity of instance at index 0
puts santas[0].age
puts santas[0].ethnicity

#0. create 100 Santas, each created with the following steps:
#1. select random gender and random ethnicity (.sample)
#2. create new instance from Santa class using these arguments
#3. select random number between 0 and 140 (prng = Random.new, use rand(max))
#4. assign new santa's age to this number
#5. print attributes of new santa using attr_reader methods

100.times do
  prng = Random.new

  random_gender = example_genders.sample
  random_ethnicity = example_ethnicities.sample

  new_santa = Santa.new(random_gender,random_ethnicity)

  new_santa.age = rand(140)

  puts "#{new_santa.gender}"
  puts "#{new_santa.ethnicity}"
  puts "#{new_santa.reindeer_ranking}"
  puts "#{new_santa.age}"

end