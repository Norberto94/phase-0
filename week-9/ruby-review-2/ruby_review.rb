# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
# Have contidionals for every scenario in a each with index loop
# have the highest number be first to filter out the number that are multiples of the bigger numbers first
# Input: Array
# Output: Array

# Initial Solution

def super_fizzbuzz(array)
  array.each_with_index do |element, index|
    if element % 15 == 0
      array.delete_at(index)
      array.insert(index, "FizzBuzz")
    
    elsif element % 5 == 0
      array.delete_at(index)
      array.insert(index, "Buzz")
      
     elsif element % 3 == 0
      array.delete_at(index)
      array.insert(index, "Fizz")  
      
    end
  end
  return array
end



# Refactored Solution
def super_fizzbuzz(array)
    array.map! { |e| e % 15 == 0 ? "FizzBuzz" : e }.flatten!
    array.map! { |e| e % 5 == 0 ? "Buzz" : e }.flatten!
    array.map! { |e| e % 3 == 0 ? "Fizz" : e }.flatten!
  return array
end

# Reflection