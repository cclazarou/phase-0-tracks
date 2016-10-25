# Virus Predictor

# I worked on this challenge [by myself, with: Katy Duncan].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#iterate through state_data hash, create new viruspredictor instance for each each key


STATE_DATA.each do | state, population_info_hash|
  current_state = VirusPredictor.new(state,population_info_hash[:population_density],
   population_info_hash[:population] )
  current_state.virus_effects
end




#=======================================================================
# Reflection Section
Once again, I lucked out and got a very engaged guide, which very much made up for our technical difficulties and my lack of a "real" pair to program with.  I was really grateful for DBC's intuition that a nested hash refresher assignment was a good idea at this juncture, and specifically benefited from the following implied points

- When iterating through a hash using .each do, you can access a value in a nested hash by using the overt syntax

  name_of_hash[key_in_hash_at_this_element][key_of_subhash*_at_this_element]

  OR the more efficient syntax

  local_name_of_value_in_this_element_of_hash[key_of_subhash]

  BECAUSE

  if we're at the first element of the STATE_DATA hash ("Alabama" => {population_density: 94.65, population: 4822023})

  then both name_of_hash[key_in_hash] AND local_name_of_value_in_this_element_of_hash return

  {population_density: 94.65, population: 4822023}

- the private keyword can be called anywhere in a class, and every method underneath it until the end of the class definition cannot be called outside of the class, even though it is an instance method

As always, I think it would be a good idea to write down more of my "rabbit hole" ideas, and time block how much of the exercise we want to dedicate to tangiential ideas with my guide ahead of time (otherwise I get a little out of control).

*I know this isn't a real word