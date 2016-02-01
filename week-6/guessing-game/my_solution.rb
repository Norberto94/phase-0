# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Integer
# Output: Boolean, 1 of 3 symbols
# Steps:


# Initial Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess > @answer
  		return :high
  	elsif @guess < @answer
  		return :low
  	else
  		return :correct
  	end
  end

   def solved?
   	if @guess == @answer
   		return true
   	else
   		return false
   	end
   end
end




# Refactored Solution
# I find no need to refactor





# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

They do so with conditional logic.

When should you use instance variables? What do they do for you?

You should use instance variables when you need flexibility with your code, meaning that they will not hava a fixed value. 
	

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control is using conditionals to go through different ways to handle the input. The basic format to use it is to compare x thing with y criteria and apply conditionals that do one thing or the other depending on the result of the comparison. For example,
	if a.is_a(Integer)
		#do this
	else
		#do this instead
	end

I did not have any problems with flow control in this challenge.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

Because high, low and correct are meant to represent a unchangeable result. symbols are more efficient performance wise than strings.
=end
