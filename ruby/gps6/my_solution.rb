# Virus Predictor
# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.
# EXPLANATION OF require_relative
# Link to ruby file in same directory or import libraries that aren't included by default

require_relative 'state_data'
class VirusPredictor
# Taking in arguments and initializing instance variables
  def initialize(state)
    @state = state
    @population = STATE_DATA[state][:population]
    @population_density = STATE_DATA[state][:population_density]
  end
# Calls two methods at once
  def virus_effects
      print "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end
  private
# Calculates number of death based on arguments; population density and population. Per state, prints the number of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      rate = 0.4
    elsif @population_density >= 150
      rate = 0.3
    elsif @population_density >= 100
      rate = 0.2
    elsif @population_density >= 50
      rate = 0.1
    else
      rate = 0.05
    end
    number_of_deaths = (@population * rate).floor
  end
# Declares speed based off population density and prints result
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end
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
STATE_DATA.each {|state, data| VirusPredictor.new(state).virus_effects }
#=======================================================================

# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # symbols are immutable - make an object, it creates a new hash object and each key is a new string object and their value is a hash; there are two key value pairs which both are symbols with integer values --- and it takes space and processing power to manipulate

# What does require_relative do? How is it different from require?
  # As mentioned above, require_relative is used to link to ruby file in same directory or import libraries that aren't included by default. "Require" requires a path or directory name and file name with extension

# What are some ways to iterate through a hash?
  # In this challenge we used the .each method to iterate through a hash.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # The one thing that stood out to me wa that the methods being called had instance variables as the arguments.

# What concept did you most solidify in this challenge?
  # I can't say I solidified it, but I did gain a much deeper understanding of refactoring. Our guide taught us some really cool concepts and "mnemonic devices" for refactoring
