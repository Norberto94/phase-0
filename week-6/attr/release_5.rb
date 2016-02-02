# Release 4:

# refactor this code to move method assignments to attr_ attributes. Like we did with age. Let's pare down the superfluous code.

# Your Code Here:

class Profile
# first let's finish refactoring this code
# note that there is a way to add all of the variables like :age on one line, how would we do that?
  attr_accessor :age
  attr_accessor :name
  attr_accessor :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end

instance_of_profile.age = 21
instance_of_profile.name = "Norberto"
instance_of_profile.occupation = "DBC student! oh yeah!"


puts
puts "---- printing all profile info -----"
sleep 0.8
instance_of_profile.print_info
#Status API Training Shop Blog About Pricing

end