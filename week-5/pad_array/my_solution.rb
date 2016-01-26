# Pad an Array

# I worked on this challenge [ with:Alyssa Ransbury ]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution #destructive
def pad!(array, min_size, value = nil)
  n = min_size - array.count
  if min_size == 0
    return array
  elsif n.times do array << value 
  end
  return array
end
end

def pad(array, min_size, value = nil)
 n = min_size - array.count

  if min_size <= 0 || n < 0
    array = array.clone
   return array

  else
    array_2 = []
    n.times do array_2 << value end
    return array + array_2
  end

end



# 3. Refactored Solution



# 4. Reflection
=begin

Were you successful in breaking the problem down into small steps?

Yes, and it is really helpfu. Breaking down th problem really helped us
as it got us started giving shape to the code.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

Some steps were easy to translate into code, which helped us with code that wasn't so obvious.
At first we had some problems with not chaning the original value of the array, but then we discovered the clone method.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

Yes it was successful. We ran the rspec quite often to see how every small change we made affected the tests, until
we satisfied all expectations. I found that rspec is really helpful to get new ideas on what to add and it helps
you break down the methods into more steps.

When you refactored, did you find any existing methods in Ruby to clean up your code?

N/A

How readable is your solution? Did you and your pair choose descriptive variable names?

I think that it is pretty easy to read, but maybe it is just because I helped write it. We definetely used
descriptive words for our variables.

What is the difference between destructive and non-destructive methods in your own words?	

Destructive methods change the value of the original input whil non-destructive do not.

	
=end