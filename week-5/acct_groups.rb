#input: array of names (Strings)
#output: array of 5 names
#break the array into arrays of five
sea_lions = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","wolv","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]

def acc_groups (array_of_names)
  a = array_of_names.each_slice(5).to_a
  n=0
  puts "Accountability Groups:"
  while n <= a.count
  puts " "
  puts n+1
  puts a[n]
    n+=1
  end
end

acc_groups (sea_lions)

#What was the most interesting and most difficult part of this challenge?

#The most interesting part of this challenge was thinking from scratch without rspec as gudelines, this was also the most challenging.


#Do you feel you are improving in your ability to write pseudocode and break the problem down?

#My pseudocode for this challenge was pretty simple but I am definetely getting better. I feel that my pseudocode for the solo challenge was good.

#Was your approach for automating this task a good solution? What could have made it even better?

#It prints out in a neat way the groups with the group number on top and spacing between groups, so it does the job. It could be better if it stored the data.

#What data structure did you decide to store the accountability groups in and why?

#I used arrays because there was no real need to have each group paired with another piece of data.

#What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

#My initial solution did not have the formatting of my final solution. I did not use any new Ruby methods for this challenge.