# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [4] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #have a variable equal to a random number from 0 to 4 to represent the index of the array ["b", "i", "n", "g", "o"] and another variable equal to a random number from 0 to 100 and have a third varibale equal to these two together

# Check the called column for the number called.
  #iterate through each element of the array to check if it is equal to the number variable 

# If the number is in the column, replace with an 'x'
  #if the conditional od the map is true, have it be replaced with x

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  
  def call
    @random = rand(0..4)
    letter = ["B","I","N","G","O"][@random]
    @number = rand(1..100)
    result = letter+@number.to_s
 
    puts "The call is " + result
    

  end

  def check
    @random
    @number
    column = @bingo_board.map {|row| row[@random]} 
    column.map! {|e| e == @number ? "X" : e }
    
    puts    
    puts column
        
end
end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  
  def call
    @random = rand(0..4)
    letter = ["B","I","N","G","O"][@random]
    @number = rand(1..100)
    result = letter+@number.to_s
 
    puts "The call is " + result
    

  end

  def check
    @random
    @number
    @bingo_board.map! {|row| row[@random] == @number ? "X" : row[@random] } 
    puts @bingo_board
          
end
end


    

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

It was difficult because I found it hard to not be so straightfoward to the point where it was too obvious and really not that helpful.


What are the benefits of using a class for this challenge?

It allows us to neatly store all related methods to a single variable.

How can you access coordinates in a nested array?

The first index will represent the array and the second the element inside that array. So for example, to access 47 in the board we could do board[0][0] as it is the first element of the first array.


What methods did you use to access and modify the array?

I used map only.


Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

I did not use any ne methods for this challenge.

How did you determine what should be an instance variable versus a local variable?

If I needed it in a method beyond the one were it was created I would make it an instance variable.

What do you feel is most improved in your refactored solution?

I had a hard time in this challenge and could not figure out how to return the entire new board instead of just the column, but I did manage to access and change the required number in a single line of code in my refactored solution.
=end
