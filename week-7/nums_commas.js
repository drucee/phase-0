// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Shin Wang.

// Pseudocode
// Input: integer
// Output: string with commas
// Steps:
//   1. Create a function that accepts an integer argument.
//   2. Change the integer into a string.
//   3. Break the string into an array of strings.
//   4. Reverse the array.
//   5. Interpolate a comma for every three digits.
//   6. Reverse the array.
//   7. Join the array into a string.
//   6. Print the string to console.


// Initial Solution
// function separateComma(integer){
//   var string = integer.toString();
//   var array = string.split("");
//   array = array.reverse();
//   for (var i = 3; i < array.length; i += 3){
//     array[i] += ",";
//   }
//   array = array.reverse();
//   array = array.join("");
//   console.log(array);
// }



// Refactored Solution
// function separateComma(integer){
//   var array = integer.toString().split("").reverse();
//   for (var i = 3; i < array.length; i += 3){
//     array[i] += ",";
//   }
//   array = array.reverse().join("");
//   console.log(array);
// 

function separateComma(integer){
  var separatedNumber = integer.toLocaleString();
  console.log(separatedNumber);
}
// Driver Code
separateComma(100000000);
separateComma(100);
separateComma(1000);
separateComma(100000);



// Your Own Tests (OPTIONAL)




// Reflection

/* 
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
I felt like we approached the problem similarly to the way I approached
it when I did it in Ruby; much of the pseudocode looks the same as what I
used when I worked on it in Ruby.

What did you learn about iterating over arrays in JavaScript?
You can iterate over arrays in JS with a for loop and an incrementor variable to
count the index.

What was different about solving this problem in JavaScript?
The main differences with solving this problem in JavaScript involved syntax. It can be confusing
to remember where the different kinds of brackets go and that you need to use var every time you
declare a new variable.

What built-in methods did you find to incorporate in your refactored solution?
In my research I found the toLocaleString method that separates a string according to
local date/time/number format. It provided a handy one-line solution to the problem.
*/