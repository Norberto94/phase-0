# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#PLEASE READ! --->: I ran all the errors form a sandbox file I have for Ruby, so
#for example, in this first error, the error line would be 4, instead
#of where "end" is in this error.rb file. <<--- PLEASE READ

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# sandbox.rb
# 2. What is the line number where the error occurs?
# 4
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# N/A (it is missing something extra)
# 6. Why did the interpreter give you this error?
# It is missing another "end" to close the def

# --- error -------------------------------------------------------

south_park

# 1. What is the line number where the error occurs?
# 1
# 2. What is the type of error message?
# undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# for main:Object (NameError)
# 4. Where is the error in the code?
# 
# 5. Why did the interpreter give you this error?
# Because "south_park" was not assigned any kind of meaning/value

# --- error -------------------------------------------------------

cartman()

# 1. What is the line number where the error occurs?
# 1
# 2. What is the type of error message?
# undefined method
# 3. What additional information does the interpreter provide about this type of error?
# for main:Object (NoMethodError)
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
# the interpreter assumes this time I am trying to make a method because
# of the parenthesis, and just like "south_park" before I did not assign
# any kind of value to it

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 1
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (1 for 0)
# 4. Where is the error in the code?
# from sandbox.rb:5:in `<main>'
# 5. Why did the interpreter give you this error?
# the method takes no arguments (1 for 0) and I passed it ('I hate Kyle')

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says

# 1. What is the line number where the error occurs?
# 1
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (0 for 1)
# 4. Where is the error in the code?
# from sandbox.rb:5:in `<main>'
# 5. Why did the interpreter give you this error?
# The methods expected 1 argument I did not pass it any



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 1
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (1 for 2)
# 4. Where is the error in the code?
# from sandbox.rb:5:in `<main>'
# 5. Why did the interpreter give you this error?
# The method expected two arguments I only passed it 1.

# --- error -------------------------------------------------------

5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 1
# 2. What is the type of error message?
# String can't be coerced into fixnum
# 3. What additional information does the interpreter provide about this type of error?
# N/A
# 4. Where is the error in the code?
# from sandbox.rb:1:in `<main>'
# 5. Why did the interpreter give you this error?
# The method * expects a number not a string. It is trying to do to "Respect my authoritay!"
# to 5. The other way around would work and it would print the string 5 times.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 1
# 2. What is the type of error message?
# divided by 0
# 3. What additional information does the interpreter provide about this type of error?
# N/A
# 4. Where is the error in the code?
# from sandbox.rb:1:in `<main>'
# 5. Why did the interpreter give you this error?
# division by 0 does not result in a defined outcome.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 1
# 2. What is the type of error message?
# cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
#  /Users/lacasadelapiscina/phase-0/week-4/cartmans_essay.md (LoadError)
# 4. Where is the error in the code?
# from sandbox.rb:1:in `<main>'
# 5. Why did the interpreter give you this error?
# It can't load the file because it does not exist.
# "This is where I'd display the file... IF I HAD ONE!" 

# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?

No error was difficult to figure out, but for the first one (def cartman_hater) 
I had to look a it for a minute to realize that the def was not closed.

How did you figure out what the issue with the error was?

I was a bit confused at first glance because the interpreter said that it was
expecting an "end" while the code already had an "end" at the end, but I quickly
realized it needed two to close the def. I tried my hypothesis and and ran it again
with two "end" and it worked.

Were you able to determine why each error message happened based on the code? 

Yes. The first error made me realize that you have to blindly trust the computer 
and realize that it is you who's overlookign something.

When you encounter errors in your future code, what process will you follow to help you debug?

Carefully read the error message, and through online research and/or trial and error
try my hypothesis.

=end