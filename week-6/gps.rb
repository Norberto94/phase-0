# Your Names
# 1)John Craigie
# 2)Norberto Caceres

# We spent [1] hour on this challenge.

#for each key in library divide value by remaining ingredients

#iterate through the hash to check if the input is not a key

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  unless library.has_key? (item_to_make)
      raise ArgumentError.new("#{item_to_make} is not a valid input")
    end

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size 
      
  
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  when 1..4
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Why not make cookies?"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Why not make a cake?"
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?

In order to iterate the part of the code that will raise an error if improper input is given, I learned about the method .has_key? which made it so we did not need to have a counter which was uncessesarily complex

Did you learn any new methods? What did you learn about them?

I learned about .has_key? which is a conditional that checks if the input is a key in the hash

What did you learn about accessing data in hashes? 

Well, the .has_key? iterates through the keys of a hash, something that pops up quite often.


What concepts were solidified when working through this challenge?

I learned quite a bit about case, I had already seen it in Codeacademy but it had been a while so I feel like I will be using it more often from now on as it seems very neat

=end