# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
puts array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
puts hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
#puts nested_data[array:][1][hash:]
puts nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES
number_array = [5, [10, 15], [20,25,30], 35]
number_array.each do |e|
  if e.kind_of?(Array)
    e.each {|n| puts n + 5}
  else puts e + 5
  end
end
number_array
  


# Bonus:
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names.each do |el|
  if el.kind_of?(Array)
    el.each do |el2|
      if el2.kind_of?(Array)
        el2.each { |word| puts word + "ly"}
      else puts el2 + "ly"
      end
    end
  else puts el + "ly"
end
end
startup_names

=begin
Reflection

What are some general rules you can apply to nested arrays?

To realise that an sub array is an element as a whole and the iteration for its parent array won't iterate each element within it.

What are some ways you can iterate over nested arrays?

You can iterate to check if an element is an array in order to iterate inside the iteration.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

We re-used methods we already new and discovered the method kind_of?
=end
