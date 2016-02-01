# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself]
# I spent [] hours on this challenge.

# Pseudocode

# Input: array of strings
# Output: on of the strings at random
# Steps: 


# Initial Solution
class Die
  def initialize(labels)
    @labels = labels

    if @labels == []
    raise ArgumentError.new("Wow wow, I can't deal with an empty array, I actually can, with this error message")
    end
  end

  def sides
    return @labels.count
  end

  def roll
    random_number = rand(@labels.count)
    return @labels[random_number]
  end
end




# Refactored Solution
#I could not find a way (that I understood) to simplify my method







# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

Pretty much the same logig, but instead of dealing with integers directly I had to deal with index numbers and the count of the array.

What does this exercise teach you about making code that is easily changeable or modifiable? 

To generalize whenever possible, for example in this challenge the random_number variable is generalized.

What new methods did you learn when working on this challenge, if any?

N/A

What concepts about classes were you able to solidify in this challenge?

I had to look back to the previous die challenge to remember how to call the methods, I think I won't forget from now on that I have to create an instance of the class first.
=end


