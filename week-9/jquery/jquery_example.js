// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
  bodyElement = $('body')
  first_heading = $('#first')
  second_heading = $('#second')
  logo = $('#logo')


//RELEASE 3:
  $('#first').css({'color': 'blue', 'border' : '5px solid red', 'visibility': 'visible'})

  $('#second').html("San Diego Sea Lions")

  

  
 

//RELEASE 4: Event Listener
 $('#logo').on('mouseenter', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://justcuteanimals.com/wp-content/uploads/2013/09/cute-animals-pictures-seal-smiling.jpg').animate({
    	opacity: .25,
    	height: 130,     
    })
  })

  $('#logo').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png').animate({
    	opacity: 1,
    	height: 37,
    })
  })





//RELEASE 5: Experiment on your own
// animation on release 4
/*reflection
What is jQuery?


It is a framework of JS, meaning that it wraps into functions certain functionalitites
that would require many lines of code on JS.


What does jQuery do for you?

It allows us access to many more built in functions in order to format our html and css.
We can do things like animations with JQuery.

What did you learn about the DOM while working on this challenge?

I got some insight on how different languages are used in the same document


*/





})  // end of the document.ready function: do not remove or write DOM manipulation below this.