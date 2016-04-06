// JavaScript Review: Die Class Ruby Challenge

// # 0. Pseudocode

// # Input: a new die with some number of sides
// # Output: a number representing a random roll of that die
// # Steps: create a Die object with some number of sides
// # IF the number of sides is less than one, throw an error message
// # create a function to return a random number no greater than the number of sides on the die


// Solution
var die = function(sides) {
  this.sides = sides;
}

die.prototype.roll = function() {
  if (this.sides < 1) {
    throw "Error: Die must have one or more sides.";
  }
  else {
    return Math.floor((Math.random() * this.sides) + 1)
  }
}

var die = new die(6);
console.log(die.roll());

// Reflection
// What concepts did you solidify in working on this challenge? 
// This challenge helped me to solidify the concept of creating objects in JavaScript
// and using prototype methods to act on those objects.
// What was the most difficult part of this challenge?
// The most difficult part of this challenge was remembering JavaScript syntax and figuring out
// what exactly in JavaScript was similar to a class.
// Did you solve the problem in a new way this time?
// I was able to make use of JavaScript's handy Math functions to solve the problem with less
// code than I did in Ruby.
// Was your pseudocode different from the Ruby version? What was the same and what was different?
// The input/output and error message pseudocode were the same; I had to alter the pseudocode to
// take account of the fact that I was working with a JavaScript object rather than a Ruby class,
// even though they can operate similarly.