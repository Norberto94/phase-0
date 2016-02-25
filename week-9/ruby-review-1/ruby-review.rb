# OO Basics: Student


# I worked on this challenge [with: David Lange].
# This challenge took me [1.5] hours.


# Pseudocode



# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)
    @first_name = first_name
    @scores = scores
  end
  
  def average
    @average = @scores.inject(0) { |sum, e| sum + e } / @scores.size
    return @average
  end
  
  def letter_grade
    if @average >= 90
      return "A"
    elsif @average >= 80
      return "B"
    elsif @average >= 70
      return "C"
    elsif @average >= 60
      return "D"
    elsif @average < 60
      return "F"
    end
  end
  
  #Write a linear_search method that searches the student array for a student's first_name and returns the position of that student if they are in the array. If the student is not in the array then the method should return -1.  
end
  
def linear_search(students, name)
  students.each_with_index do |student, index|
    if student.first_name == name
      return index
    end
  end
  return -1
end

def binary_search(students, name, min, max)
  while min <= max
    if students[min].first_name == name
      return min
    else
      min += 1
    end
  end
  return -1
end



students = []

students.push (Student.new("Alex", [100, 100, 100, 0, 100]))
students.push (Student.new("Norberto", [70, 80, 100, 0, 100]))
students.push (Student.new("David", [80, 85, 95, 70, 100]))
students.push (Student.new("Pamela", [60, 100, 100, 0, 100]))
students.push (Student.new("John", [100, 25, 100, 0, 100]))

p students


     
# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1



# Reflection

#What concepts did you review in this challenge?
#
#Ruby classes and iteration.
#
#What is still confusing to you about Ruby?
#
#What we needed to work on in this challenge was quite graspable to me
#
#What are you going to study to get more prepared for Phase 1?
#
#I am going to review JS syntax as I feel more comfortable with Ruby than JS
#