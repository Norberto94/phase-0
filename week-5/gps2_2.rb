def new_list (items)
  grocery_list = Hash.new
  list = items.split
  list.each do |item|
    grocery_list[item] = 0
  end
  print_list(grocery_list)
  return grocery_list
end

def add_item (name, quantity, grocery_list)
  grocery_list[name] = quantity
end

def remove_item (name, grocery_list)
  grocery_list.delete(name)
end

def update_list (name, quantity, grocery_list)
  grocery_list[name] = quantity
end

def print_list (grocery_list)
  puts grocery_list
end

=begin
What did you learn about pseudocode from working on this challenge?

It is extremely useful, at least to me, and I will make sure to pseucode every time I feel I need to from now on.

What are the tradeoffs of using Arrays and Hashes for this challenge?

The only time I used an array in this challenge was to give input to the new_list method. 
But made much more sense when dealing with the data as each item was going to have a 
respective quantity, so item would be the keys and the quantities would be the valu
es.

What does a method return?

The last evaluated expression.

What kind of things can you pass into methods as arguments?

Any kind of ruby object.

How can you pass information between methods?

Outside and after th methods you can create a new variable that's equal to passing the input you want to one of the methods.

What concepts were solidified in this challenge, and what concepts are still confusing?

I will have a much easier time dealing with hashes and arrays and reading errors from now on.
I also learned how to make a 


=end