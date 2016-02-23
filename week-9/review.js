/*Create a new list
Add an item with a quantity to the list
Remove an item from the list
Update quantities for items in your list
Print the list (Consider how to make it look nice!)

An object makes more sense to me. The functions will be properties of the object
Input: Item and quantity
Outpu: Object
*/



var grocery = {
  
list: {},

add_or_update: function(item , quantity) {
  grocery.list[item] = quantity
  console.log(grocery.list)
},
  
delete: function(item){
  delete grocery.list[item] 
  console.log(grocery.list)
},
};

/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

I solidfied my knowledge on JS objects and general JS syntax

What was the most difficult part of this challenge?

It was pretty straightfoward

Did an array or object make more sense to use and why?

Because the information of grocery list is paired (item and quantity)
an object made more sense to me

*/
