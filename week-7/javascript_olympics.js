// JavaScript Olympics

// I paired [with: Michael Wang] on this challenge.

// This challenge took me [1] hour.


// Warm Up
// Bulk Up
/*Create a function that takes an array of athletes that include a name and event property. (Sarah Hughes), for example, could have "Ladies' Singles" as her event). Your function should add a  win property to each athlete in the array. In the example above,  win would print "Sarah Hughes won the Ladies' Singles!"

Would it make more sense to have win be defined as a function expression or a function declaration?*/
function athlete(name, sport){
  this.name = name;
  this.sport = sport;
}

var Neymar = new athlete ("Neymar", "soccer");
var Messi = new athlete ("Messi", "soccer");
var Iniesta = new athlete ("Iniesta", "soccer");


var athletes = [Neymar, Messi, Iniesta]

var add_win = function(athletes){
    for (var i=0; i < athletes.length; i++){
  
    athletes.win = athletes[i].name + " won the Champions League!"
    console.log (athletes.win)   
    }
}

add_win(athletes)


// Jumble your words
function reverse(word){
  var array = word.split("").reverse().join("");
  console.log(array)
}

reverse("Hello")

// 2,4,6,8

function even_numbers(array){
  var evens = []
  
  for (var i=0; i < array.length; i++){
    if(array[i] % 2 === 0){
      evens.push(array[i])
    }
  }
  console.log(evens)
}
even_numbers([2,3,4,6,8,12,11])

// "We built this city"
function Athlete(){
    this.name = "Michael Phelps";
    this.age = 29;
    this.sport = "swimming";
    this.quote = "It's medicinal I swear!"
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)
/*
Reflection:
What JavaScript knowledge did you solidify in this challenge?

The for loop is getting clearer every time I use it. 

What are constructor functions?

They allow you to create objects by giving it the values for the defined properties it expects.

How are constructors different from Ruby classes (in your research)?

constructors are functions and it does not belong to any class and it can be used to create any object.
*/