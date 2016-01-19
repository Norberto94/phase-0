# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
	if list_of_words == []
		puts nil
	elsif list_of_words == [" "]
		puts " "
	elsif list_of_words[0].length < list_of_words[1].length && list_of_words[0].length < list_of_words[2].length
		puts list_of_words[0] + " is the shortest string"
	elsif list_of_words[1.length] < list_of_words[2].length && list_of_words[1].length < list_of_words[0].length
		puts list_of_words[1] + " is the shortest string"
	else list_of_words[2].length < list_of_words[1].length && list_of_words[2].length < list_of_words[0].length
		puts list_of_words[2] + " is the shortest string"
	end
end

shortest_string(["abc", "dell", "helloworld"])

=begin
list_of_words.each do |word|
	word.length
	if word[0].length < word[1].length && word[0].length < word[2].length
		puts word[0] + " is the shortest word"
	elsif word[1].length < word[0].length && word[1].length < word[2].length
		puts word[1] + " is the shortest word"
	else word[2].length < word[1].length && word[2].length < word[1].length
		puts word[2] + " is the shortest word"
	end
end
=end

