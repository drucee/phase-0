# Virus Predictor

# I worked on this challenge by myself (pair didn't show).
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative is what we would use when we want to access
# data from another file from within the file; require is what we would use
# to access data from within the directory.
#
# require_relative 'state_data'

# require './state_data.rb'

class VirusPredictor
  
  def self.generate_report(states)
    states.each do | state_name, data |
      new(state_name, data[:population_density],     data[:population]).virus_effects
    end
  end

  # defining a method to create new virus predictors for any given state of origin
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # defining a method to run the below mathematical operations on the given instance variables
  def virus_effects 
    predicted_deaths
    speed_of_spread
  end

  private
  
  attr_reader :population, :population_density, :state
  
  
  # every time the population density grows by 50 people, the population multiplier goes up by .1

  # method that calculates the number of predicted deaths using a formula based on population density
  def predicted_deaths
    # predicted deaths is solely based on population density
      if population_density >= 200
        p (population * 0.4).floor
        number_of_deaths = (population * 0.4).floor
      elsif population_density < 50
        number_of_deaths = (population * 0.05).floor
      else
        multiplier = (population_density.floor / 50) * 0.1
        number_of_deaths = (population * multiplier).floor
      end
    
    
    
    
    # case population_density
    # when population_density >= 200
    #   number_of_deaths = (population * 0.4).floor
    # when 150...200
    #   number_of_deaths = (population * 0.3).floor
    # when 100...150
    #   number_of_deaths = (population * 0.2).floor
    # when 50...100
    #   number_of_deaths = (population * 0.1).floor
    # else
    #   number_of_deaths = (population * 0.05).floor
    # end



    print "#{state} will lose #{number_of_deaths} people in this outbreak"

  end

  # method that calculates the speed by which the virus will spread based on the population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if population_density >= 200
      speed += 0.5
    elsif population_density >= 150
      speed += 1
    elsif population_density >= 100
      speed += 1.5
    elsif population_density >= 50
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

#dc = VirusPredictor.new("Washington,D.C.", STATE_DATA["Washington,D.C."][:population_density], STATE_DATA["Washington,D.C."][:population])
#dc.virus_effects


# for each state in STATE_DATA...do that stuff ^^^

# "Alabama" => {population_density: 94.65, population: 4822023}

 all_states = STATE_DATA.each do | state_name, data |
   VirusPredictor.new(state_name, data[:population_density], data[:population]).virus_effects
 end

 VirusPredictor.generate_report(STATE_DATA)

#=======================================================================
# Reflection Section
#What are the differences between the two different hash syntaxes shown in the state_data file?
# There is one hash syntax that you use with all data types except symbols, and that requires the
# => notation between keys and values; with symbol keys, you can separate key and value with a colon. 
#What does require_relative do? How is it different from require?
# Require_relative is what we would use when we want to access
# data from another file from within the file; require is what we would use
# to access data from within the directory.
#What are some ways to iterate through a hash?
# We can iterate through a hash by using .each notation with two arguments, by using .each_key and one argument,
# or .each_value and one argument.
#When refactoring virus_effects, what stood out to you about the variables, if anything?
# These variables are instance variables and we already defined them as such, so they are already available to us
# within the class. Therefore, we didn't need to pass them in again as arguments for
# either of the virus_effects methods.
#What concept did you most solidify in this challenge?
# This challenge helped solidify the concept of refactoring and the concept of iterating over
# nested hashes. It also introduced the concepts of private methods and constants to me.