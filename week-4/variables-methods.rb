puts "What's your first name?"
	first = gets.chomp
puts "What's you middle name?"
	middle = gets.chomp
puts "What's your last name?"
	last = gets.chomp

def greeting (first, middle, last)
    puts "Hello " + first + " " + middle + " " + last
end

greeting first, middle, last






puts "What's your favorite number in the whole world?"
num = gets.chomp
better = num.to_i + 1

puts better.to_s + " " + "is a much better and bigger number than your favorite number in the whole wide world."

=begin
How do you define a local variable?

With "="
For example, num1 = 5
I have created a variable called "num1" and it contains the integer 5

How do you define a method?

With "def"
for Example,

def greeting (first, middle, last)
    puts "Hello " + first + " " + middle + " " + last
end

I have defined a method called "greeting"

What is the difference between a local variable and a method?

A method can be a block of code while a local variable is a value stored under a given name

How do you run a ruby program from the command line?

We run it like this --> ruby program_name.rb

How do you run an RSpec file from the command line?

with "rspec" followed by the spec file name

What was confusing about this material? What made sense?

I am rellay not sure what spec files are and why do we need them. All of the  built-in methods and how to create variables and methods of our own really made sense. It was fun to refresh some of my basic Ruby knowledge.

=end

#Here are links to my other work

https://github.com/Norberto94/phase-0/blob/master/week-4/address/my_solution.rb
https://github.com/Norberto94/phase-0/blob/master/week-4/define-method/my_solution.rb
https://github.com/Norberto94/phase-0/blob/master/week-4/math/my_solution.rb
