# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [0.25] hours.

# Pseudocode
# Create methods that takes a string
# split the string into individual characters and put them in an array
# reverse the array
# join the characters in the array into a single string
#

# Initial Solution
def reverse_words (string)
  array = string.split("")
  array.reverse!
  final = array.join("")
  return final
end



# Refactored Solution
def reverse_words (string)
  array = string.split(" ")
  array.each do |word|
    word.reverse!
  end
  return array.join(" ")
  
end






# Reflection
#What concepts did you review or learn in this challenge?
#
#I reviewed how to create functions, and I still find it more
#intuitive than JS, but perhaps that will change in the future.
#
#What is still confusing to you about Ruby?
#
#I felt comfortabel with all concepts that the challenge I chose required
#
#What are you going to study to get more prepared for Phase 1?
#
# I am going to practice more JS on codeacademy to get more comfortablw witht the syntax
#
