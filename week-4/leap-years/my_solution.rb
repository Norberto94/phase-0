# Leap Years

# I worked on this challenge [by myself, with: ].
#The year can be evenly divided by 4;
#If the year can be evenly divided by 100, it is NOT a leap year, unless;
#The year is also evenly divisible by 400. Then it is a leap year.

# Your Solution Below
def leap_year? (year)
	if year % 4 == 0
		if year % 100 != 0
		return true
		else
		if year % 400 == 0
		return true
        else return false
	end
	end
else return false
end
end