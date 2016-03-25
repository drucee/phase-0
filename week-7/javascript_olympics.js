  // JavaScript Olympics

// I paired [with: Lisa Dannewitz] on this challenge.

// This challenge took me [1] hours.


// Warm Up




// Bulk Up

var athlete1 = {};
athlete1.name = "Michael Phelps";
athlete1.event = "swimming";
var athlete2 = {};
athlete2.name = "Usain Bolt";
athlete2.event = "sprinting";
var athleteArray = [athlete1, athlete2];

function win(newArray){
  for (var i = 0; i < newArray.length; i++){
    newArray[i]["win"] = newArray[i]["name"] + " won the " + newArray[i]["event"] + "!";
  } 
  return newArray
}

console.log(win(athleteArray))

// Jumble your words

function reverse(string){
  return string.split("").reverse().join("");
}

console.log(reverse("monkeyshines"))

// 2,4,6,8

function even(array) {
  function isEven(x) {
    return x % 2 === 0;
  }
  return array.filter(isEven);
}

console.log(even([1,2,3,4,5,6,7]))

// "We built this city"

function Athlete(name,age,sport,quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
This challenge solidified my knowledge of how to create functions in JavaScript, how to add and alter
properties of objects, and how to use built-in JavaScript methods.
What are constructor functions?
Constructor functions are functions that can be used to create new objects
of the constructor's type.
How are constructors different from Ruby classes (in your research)?
Ruby classes are themselves objects, while JavaScript constructors are functions. You need both
a constructor and a prototype object to instantiate objects from a constructor on JS, whereas
Ruby classes have intrinsic methods of their own.
*/