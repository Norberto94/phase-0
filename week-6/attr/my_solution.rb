#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  def initialize
    @name = "Norberto"
  end
end

class Greetings
  def initialize
    @namedata = NameData.new
  end

  def hello
    puts "Hello Student! How wonderful to see you today."
  end
end

=begin
Reflection:

Release 1:
What are these methods doing?

They have a default value of Kim, 27 years old, cartographer and other methods allow you to change name, age and occupation. Some code was added for aesthetic purposes like sleep and extra puts for spacing

How are they modifying or returning the value of instance variables?

Instance variables can be reassigned to a new value, and that's what they are doing.

Release 2:
What changed between the last release and this release?

The what_is_age method was commented out because it was no longer necessary due to the attr_reader at the top which enabled us to get to the age simply with .age on a profile instance.

What was replaced?

The what_is_age method was commented out

Is this code simpler than the last?

Less code and same functions, so yes

Release 3:

What changed between the last release and this release?

The change_my_age method was commented out because it was no longer necessary due to the attr_writer at the top which enabled us to change the age simply by calling it with .age and re-assinging it with =.

What was replaced?

The change_my_age method was commented

Is this code simpler than the last?

Yes, less code and same functions

Relase 5:

What is a reader method?

It allows you to return a value or state outside of a class without changing the value

What is a writer method?

It allows you to change the value of a variable outside of a class but it can't be displayed.

What do the attr methods do for you?

They allow you to access and/or change a variables value outside of the class by simply re-assinging it with =


Should you always use an accessor to cover your bases? Why or why not?

No, when you don't want to grant access to either changeing values or seeing values to other classes or methods as in a real life scenario this may make some sensible information accesible to someone who is  not supposed to have access to it

What is confusing to you about these methods?

I understood them well and I can see how handy they are already
=end





