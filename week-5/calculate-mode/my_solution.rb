# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Alyssa Ransbury ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# 1. iterate through the array and make a hash with the number of times the element appears plus the element.
# 2. sort the hash
# 3. add the first key value in the hash to an array


# 1. Initial Solution
  def mode (array)
  h = Hash.new(0)
  array.each{ |e| h[e] += 1 }
  sorted_hash = h.sort_by {|k, v| v}.reverse
  result =[]
  if sorted_hash[0][1] == sorted_hash[1][1]
    result << sorted_hash[0][0]
    result << sorted_hash[1][0]
    result.sort
  elsif
    sorted_hash[0][1] > sorted_hash[1][1]
    result << sorted_hash[0][0]
    result
  end
end




# 3. Refactored Solution
def mode (array)
  h = Hash.new(0)
  array.each{ |e| h[e] += 1 }
  sorted_hash = h.sort_by {|k, v| v}.reverse
  result =[]
  h.each do |k,v|
    if v == h.values.max
      result << k
    end
  end
  result.sort
end



# 4. Reflection
=begin

Which data structure did you and your pair decide to implement and why?

We decided on hashes as each element could be a key and the number of times it repeats its value.


Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

We dove into this one with out much pseusocode to be honest. So I guess no, we were more succesful in the other challenge.

What issues/successes did you run into when translating your pseudocode to code?

Knowing that the method had to return the most frequent value and we were going to use hashes was helpful
as we knew we were going to refer to the second element in the hash eventually.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

we used each and sort_by. When refactoring we managed to generalize the method as in our first solution it would
only work with a maximum if two elements with the highest frequency. We did this by using the method .values and .max
on the sorted hash to compare each value with the highest value.

=end