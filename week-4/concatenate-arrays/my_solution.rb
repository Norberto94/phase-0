# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
	if array_1 && array_2 == []
		return []
    elsif array_1 || array_2 != []
     	return array_1.concat(array_2)
     end
end

