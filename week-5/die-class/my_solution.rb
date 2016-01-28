# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution
class Die
  def initialize(sides)
    @sides = sides
  
  if @sides < 1
    raise ArgumentError.new("Only numbers equal or greater than 1 are allowed")
  end
end

  def sides
    @sides
  end

  def roll
    return (1 + rand(@sides))
  end
end


# 3. Refactored Solution
# I could not find or figure out a way to simplify my code






# 4. Reflection

#What is an ArgumentError and why would you use one?
#An ArgumentError happens when invalid input is given to a method. You would use one to limit the scope of input to only what makes sense in your method.

#What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#I learned about rand and ArgumentError and I found pretty easy to implement them in this challenge. 

#What is a Ruby class?
#A Ruby class is a collection of methods.

#Why would you use a Ruby class?
#To generalize a type of object that you expect to need to create many instances of. The sole purpose of classes is to have objects created that are instances of that class.

#What is the difference between a local variable and an instance variable?
#A local variables with the end of a method, while an instance variable is remembered even after the end.

#Where can an instance variable be used?
#Inside any method of the same class.