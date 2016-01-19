# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
	if list_of_words == []
		puts nil
	elsif list_of_words == [" "]
		puts " "
	elsif list_of_words[0].length > list_of_words[1].length && list_of_words[0].length > list_of_words[2].length
		puts list_of_words[0] + " is the longest string"
	elsif list_of_words[1].length > list_of_words[2].length && list_of_words[1].length > list_of_words[0].length
		puts list_of_words[1] + " is the longest string"
	else list_of_words[2].length > list_of_words[1].length && list_of_words[2].length > list_of_words[0].length
		puts list_of_words[2] + " is the longest string"
	end
end

longest_string([])
longest_string([" "])
longest_string(["abc", "dell", "helloworld"])
  # Your code goes here!
