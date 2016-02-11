// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Luis Ybarra

// Pseudocode

// INPUT: Integer - Number
// OUTPUT: String representation of the Integer INPUT with commas added
// STEPS: 
//   1. Convert Integer to String
//   2. Reverse the String
//   3. Add a comma after every set of three digits
//   4. Reverse the String
//   5. Return the String.



// Initial Solution
function separate_initial(num) {
  var result = (""+num).split("");
  result.reverse();
  for(var i = 1; i <= result.length; i++) {
    if (i % 4 == 0)
      result.splice(i-1, 0, ",");
  }
  result.reverse();
  console.log(result.join(""))
}; 

separate_initial(1234567);

// Refactored Solution
function separate_comma(num){
  var x = num.toLocaleString();
  console.log(x)
}

separate_comma(23423423452)


// var example 
// Your Own Tests (OPTIONAL)
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (separate_comma(23423423452) === 23,423,423,452),
  "Error",
  "1. "
)

assert(
  (separate_initial(123456) === 123,456), "Error", "2."
)
// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently

The concept was the same but we had to get used to diffrent syntax

What did you learn about iterating over arrays in JavaScript?

I consolidated a bit more my knowledge of the for loop.

What was different about solving this problem in JavaScript?

Apart from the syntax it was pretty mucht the same concept

What built-in methods did you find to incorporate in your refactored solution?

we found toLocaleString which add commas to numbers.
*/
