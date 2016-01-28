# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive integer
# What is the output? a comma-separated inetger as a string
# What are the steps needed to solve the problem?
# transform the input into a string
# reverse the string
# transform string to character array
# place "," in indexes multiples of 3
# reverse back and transform back to string
# return result


# 1. Initial Solution
def separate_comma (number)
  a = number.to_s.chars.to_a.reverse
  b = a.count/3
  if a.count < 4
    return number.to_s
  elsif a.count == 6
    a.insert(3, ",")
    return a.join.reverse
  elsif
    c = 3
    b.times do |n|
      a.insert(c, ",")
      c = c +4
    end
    return a.join.reverse
  end
end





# 2. Refactored Solution
def separate_comma(number)
  number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end



# 3. Reflection

#What was your process for breaking the problem down? What different approaches did you consider?
# I imagined in my head what each method would make the input look like and what next method
# would make it look more like what I wanted.
#Was your pseudocode effective in helping you build a successful initial solution?
# Very helpful.
#What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# My refactored solution breaks down the reversed array into groups of maximum three characters and joins them with a comma
# in between. This way there was no need to specify the index for inserting the comma. My first refactored solution was not working
# and I had no idea why, and was happy to find that someone had come up with the same idea but it had an extra piece of code
# .map(&:join). My first idea did not include it and I had to read on why  it needed it and I think I understand. .map(&:join)
# is neccessary because before we join the arrays together we need to join the characters inside the array into one string.
# after that we can call .join(",") to join those unified arrays with a comma in between them. & is important as .map takes a block
# and & makes :join into a block. 
#How did you initially iterate through the data structure?
# I itireated with b.times do, b being equal to an integer division of the number of elements divided by three. So if 
# the array had 7 elements it would be 2.times do. And for the second time the index position where the coma would be placed
# was increased by 4. I created special cases for when the number of elements is less that 4, as anything smaller than
# 1,000 would not need a comma. I also made a special case of when there are 6 elments as if I had not "999999" would
# return ",999,999". In that case there was no for variable for the index as it would always be the fourth position.
#Do you feel your refactored solution is more readable than your initial solution? Why?
# Yes, much more readable, shorter and it is a generalized method for properly putting commas in numbers.
