# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Mitchell Kroska ].
# I spent [2] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

=begin
  CreditCard#double
    Create placeholder Array doubled_digits
    Map card_number with evens doubled, and just return the number for odds
  end
    
=end
class CreditCard
  def initialize(card_number)
    unless card_number.to_s.split(//).length == 16 
        raise ArgumentError.new("Please enter a valid credit card number")
    end
    @card_number = card_number
  end
  
  
  def check_1
  
    array = @card_number.to_s.split(//)
    array.map!.with_index  do |n, i| 
      if i.even? 
        n.to_i*2 
      else n.to_i 
      end
    end
    return array
  end
  
  
  def check_2(array)
      new_array = []
      array.each do |e|
        if e >= 10
          e.to_s.split("").each { |e2| new_array << e2.to_i}
        else
          new_array << e.to_i
        end
      end 
    
 
       sum = new_array.inject(0) do |sum, n|
          sum += n
        end
    return sum
  end

  
  def valid?(int)
    int % 10 == 0 ? true : false
  end
  
  def check_card
    nums_with_doubles = check_1
    sum = check_2(nums_with_doubles)
    valid?(sum)
  end
  
end


# Refactored Solution
class CreditCard
  def initialize(card_number)
    unless card_number.to_s.split(//).length == 16 
        raise ArgumentError.new("Please enter a valid credit card number")
    end
    @card_number = card_number
  end
  
  
  def nums_w_doubles
  
    array = @card_number.to_s.split(//)
    array.map!.with_index  do |n, i| 
      i.even? ? n.to_i*2 : n.to_i
    end
    return array
  end
  
  
  def sum_nums(array)
      new_array = []
      array.each do |e|
        e >= 10 ? e.to_s.split("").each { |e2| new_array << e2.to_i} : new_array << e.to_i        
      end 
      sum = new_array.inject(0) do |sum, n|
          sum += n
      end
    return sum
  end

  def valid?(int)
    int % 10 == 0 ? true : false
  end
  
  def check_card
    valid?(sum_nums(nums_w_doubles))
  end
  
end



# Reflection
=begin
	
What was the most difficult part of this challenge for you and your pair?

Dealing with the double digits. 

What new methods did you find to help you when you refactored?

We did not use new methods to refactor but we did use more efficient syntax. But I learned from mitchell about the method .inject and .with_index

What concepts or learnings were you able to solidify in this challenge?

How to del with multi-dimensional arrays.
	
=end