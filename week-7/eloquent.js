// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var number = 27
console.log(number + 3)


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var number = "#";
while (number.length <= 7) {
	console.log(number);
	number += "#";
}

// Functions

// Complete the `minimum` exercise.

function min(a, b) {
  if (a < b)
    return a;
  else
    return b;
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name: "Evan Druce",
	age: 31,
	foods: ["poutine", "burgers", "char siu"],
	quirk: "I sing Sacred Harp",
};
