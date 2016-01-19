# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
	if list_of_nums == []
		puts nil
	elsif list_of_nums[0] < list_of_nums [1] && list_of_nums[0] < list_of_nums[2]
		puts list_of_nums[0].to_s + " is the smallest"
	elsif list_of_nums[1] < list_of_nums [2] && list_of_nums[1] < list_of_nums[0]
		puts list_of_nums[1].to_s + " is the smallest"
	else list_of_nums[2] < list_of_nums [1] && list_of_nums[2] < list_of_nums[0]
		puts list_of_nums[2].to_s + " is the smallest"
	end
end

smallest_integer([])
smallest_integer([1, 2, 3])
