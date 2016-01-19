# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  if list_of_nums == []
		puts nil
	elsif list_of_nums[0] > list_of_nums [1] && list_of_nums[0] > list_of_nums[2]
		puts list_of_nums[0].to_s + " is the largest"
	elsif list_of_nums[1] > list_of_nums [2] && list_of_nums[1] > list_of_nums[0]
		puts list_of_nums[1].to_s + " is the largest"
	else list_of_nums[2] > list_of_nums [1] && list_of_nums[2] > list_of_nums[0]
		puts list_of_nums[2].to_s + " is the largest"
	end
end

largest_integer([])
largest_integer([4, 2, 1])