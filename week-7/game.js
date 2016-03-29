 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Bender must collect booze and kill all humans!
// Goals: Kill the human, collect booze
// Characters: Bender, human
// Objects: Bender(position, booze, health), human, booze
// Functions: moveUp, moveDown, moveLeft, moveRight, attack

// Pseudocode
// define "Bender" object that can move through a room
// create methods to move Bender through room up, down, left, right
// move Bender through room and check where he is
// define "Booze" object and give it random position
// define "Human" object and give it random position
// if he is in same position as "Booze" object, add booze as property to "Bender" object
// continue to move Bender through room
// if he is in same position as "Human" attack
// if he has booze, Bender defeats human; if he does not, game over

// Initial Code

//define "Bender" object that can move through a room
var bender = {
posX: 0,
posY: 0,
hasBooze: false,
win: false,

//create a function to move Bender in any cardinal direction
move: function(direction) {
	if (direction === 'right'){
		this.posX +=5;
	}

	else if (direction === 'left'){
		bender.posX -=5;
	}

	else if (direction === 'up'){
		bender.posY += 5;
	}

	else if (direction === 'down'){
		bender.posY -= 5;
	}

//Display Bender's position
	console.log("I'm Bender! I'm great! My position is " + bender.posX + "," + bender.posY);

//check if Bender is near the booze, then collect it
	if (bender.posX === booze.posX && bender.posY === booze.posY) {
	console.log("I got some booze! Time to kill all humans!");
	bender.hasBooze = true;
	}

//check if Bender is near the human, then defeat it if Bender has booze
	else if (bender.posX === human.posX && bender.posY === human.posY && bender.hasBooze === true) {
		console.log("I killed all humans! Bite my shiny metal ass!");
		bender.win = true;
	}

	else if (bender.posX === human.posX && bender.posY === human.posY && bender.hasBooze === false) {
		console.log("Game over! That sucks, I just wanted to kill all humans!");
	}
}
};

//define "human" object
var human = {
	posX: Math.floor((Math.random()*100)+1),
	posY: Math.floor((Math.random()*100)+1)
};

//define "booze" object and give it another random position
var booze = {
	posX: Math.floor((Math.random()*100)+1),
	posY: Math.floor((Math.random()*100)+1)
};

// Refactored Code
var bender = {
posX: 0,
posY: 0,
hasBooze: false,
win: false,

//create a function to move Bender in any cardinal direction
move: function(direction, paces) {
	if (direction === 'right'){
		this.posX += paces;
	}

	else if (direction === 'left'){
		bender.posX -= paces;
	}

	else if (direction === 'up'){
		bender.posY += paces;
	}

	else if (direction === 'down'){
		bender.posY -= paces;
	}

//Display Bender's position
	console.log("I'm Bender! I'm great! My position is " + bender.posX + "," + bender.posY);

//check if Bender is near the booze, then collect it
	if (bender.posX === booze.posX && bender.posY === booze.posY) {
	console.log("I got some booze! Time to kill all humans!");
	bender.hasBooze = true;
	}

//check if Bender is near the human, then defeat it if Bender has booze
	else if (bender.posX === human.posX && bender.posY === human.posY && bender.hasBooze === true) {
		console.log("I killed all humans! Bite my shiny metal ass!");
		bender.win = true;
	}

	else if (bender.posX === human.posX && bender.posY === human.posY && bender.hasBooze === false) {
		console.log("Game over! That sucks, I just wanted to kill all humans!");
	}
}
};

//define "human" object
var human = {
	posX: 0,
	posY: 0
};

//define "booze" object and give it another random position
var booze = {
	posX: 0,
	posY: 0
};

var playGame = function () {
	human.posX = Math.floor((Math.random()*100)+1);
	human.posY = Math.floor((Math.random()*100)+1);
	booze.posX = Math.floor((Math.random()*100)+1);
	booze.posY = Math.floor((Math.random()*100)+1);
	console.log("A human! I'm coming for you, meatbag!")
	console.log("Human's position is " + human.posX + "," + human.posY)
}

playGame();
bender.move('right', 36)




// Reflection
// What was the most difficult part of this challenge?
// The most difficult part of this challenge for me was getting the code
// syntax correct. JavaScript is annoyingly exacting with semicolons and
// curly braces and the error messages aren't always clear, which makes it hard to
// debug.
// What did you learn about creating objects and functions that interact with one another?
// I learned that the actual process of creating objects and functions in JS
// is not that difficult, and that creating objects and functions can be approached
// similarly to how it's done with classes and methods in Ruby.
// Did you learn about any new built-in methods you could use in your refactored solution?
// If so, what were they and how do they work?
// I used the sample code as a starter point and in my refactored solution, tried to address
// some of the problems I saw in my variation of the sample code. One of the biggest problems
// that I noticed is that the sample code involves moving a character by 10 paces at
// a time, while the collectible object and enemy could be placed on the board at
// any integer position between 1 and 100. I figured that this would have to be solved one
// of two ways: by making the main character collect the object/encounter the enemy
// if he came within a certain range of either, or by making the main character able to
// move any number of paces. I was unable to find a method to do the former, so I went with the
// latter and had the move function take a second argument. I also needed to solve the problem of
// the game generating new random positions for the collectible and enemy objects every time I ran
// the game, so I moved the position generators for both into a playGame function that I could call
// once. I am still not entirely sure if this solves the problem, though.
// How can you access and manipulate properties of objects?
// The syntax for doing this is as follows: object.property will access the property;
// property = newValue will adjust the property's value once it has already been defined using
// the var syntax. 