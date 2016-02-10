// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var powa = 5001
powa = powa + 4000
console.log(powa, "?! How can it be?! It is over 9000!");

prompt("What is your favorite food?")
console.log("Hey! That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var tri = "#"
var counter = 0
 
while (counter < 7) {
  console.log(tri);
  tri = tri + "#";
  counter += 1
}
  

// Functions

// Complete the `minimum` exercise.
function min(a,b){
  if (a == b)
    console.log("They are equal")
    else if (a > b)
      console.log(b)
      else if (b > a)
        console.log(a)
        
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Norberto",
	age: 21,
	favorite_foods: ["Sushi", "Tomato soup", "Watermelon"]
	quirk: "Brazilian Jiu-Jitsu purple belt"

};
