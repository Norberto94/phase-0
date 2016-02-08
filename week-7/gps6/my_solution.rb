# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative grants access to the state_data file. And require is not enough because the file is not a functionality that has been properly installed. Require_relative gives us access allows us to load a file relative to where the require_relative was stated.
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)#it creates instance variables for the expected input for an instance of the class VirusPredictor
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end



  def virus_effects #it calls two other methods
    predicted_deaths
    speed_of_spread
  end

  private #you want to use this method when you want a method to be only accessible from the class where it was called. You may want to do this for security reasons to protect sensible data.

  def predicted_deaths
     # predicted deaths is solely based on population density
    # it creates a variable number_of_deaths which value will be calculated by the @population runned through a constant function and the funciton used to calculate it will depend on the size of @population_density
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
    # it creates a variable speed, which value will depend on @population_density as there are conditionals that evaluate against fixed parameters the value of @population_density
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
STATE_DATA.each do |state,data| VirusPredictor.new(state,data[:population_density],data[:population]).virus_effects
end



#=======================================================================
# Reflection Section
=begin
  
What are the differences between the two different hash syntaxes shown in the state_data file?

One uses the => notation and the other uses symbols

What does require_relative do? How is it different from require?

It grants access to a file to the file where the require_relative statement is. It difer form require as require expects a properly installed method or file.

What are some ways to iterate through a hash?

We used .each do

When refactoring virus_effects, what stood out to you about the variables, if anything?

There was no need to state the variables as they are available in the entire class because they are instance variables.

What concept did you most solidify in this challenge?

How to iterate through a hash.
  
=end