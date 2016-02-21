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