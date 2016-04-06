// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})
$('body h1').css({'color': 'blue'})
$('body h1').css({'border': '2px'})
$('body h1').css({'visibility': 'visible'})


//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body')
classElement = $('.mascot')
headingElement = $('h1')

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('body h1').css({'color': 'blue'})
$('body h1').css({'border': '2px'})
$('body h1').css({'visibility': 'visible'})
$('body h1:first').html('Fiery Skippers')
$('img').css({'border': '2px solid black'})


//RELEASE 4: Event Listener
  // Add the code for the event listener here
  $('img').on('mouseover', function(e){
	e.preventDefault()
	$(this).attr('src', 'http://www.carolinanature.com/butterflies/fieryskipper80866.jpg')
})
  $('img').on('mouseout', function(e){
  	$(this).attr('src', 'dbc_logo.png')
  })

//RELEASE 5: Experiment on your own

$('img').animate({
'width':'500px',
'height':'250px',
'border-width':'50px',
},500);




})  // end of the document.ready function: do not remove or write DOM manipulation below this.

/*
What is JQuery?
JQuery is a JavaScript library that allows you to manipulate elements of the DOM tree
using JavaScript code.
What does JQuery do for you?
JQuery allows you to manipulate HTML documents, instantiate events, animate DOM elements, and implement Ajax.
What did you learn about the DOM while working on this challenge?
We learned how to manipulate the HTML and CSS of DOM elements using JQuery, and how to combine HTML
and CSS and JQuery code to create effects on a webpage that could not otherwise be done with HTML and
CSS alone.
*/