/* User Stories

1. As a user, I want to find the sum of a group of numbers.
2. As a user, I want to find the mean of a group of numbers.
3. As a user, I want to find the median of a group of numbers.

*/

/* Refactored Solution */

// Add the finished solution here when you receive it.
// /*
/*As a user, I was to call the function, input an array, and receive the sum of the data entered.
*/
function sum(int_array){
  var total = 0;
  for (i in int_array){
    total += int_array[i];
  }
  return total
}


/*
As a user, I want to call the function, input an array, and receive the mean of the data entered.
*/
function mean(int_array){
  var total = sum(int_array);
  return average = total/(int_array.length)
}


/*
As a user, I want to call the function, input an array, and recieve the median of the data entered.
*/
function median(int_array){
  sorted_array = int_array.sort();
  array_length = int_array.length;
  if (array_length%2 == 1){
    var median = Math.floor(array_length/2);
    return int_array[median];
  } else {
    return int_array[array_length/2];

  }
}

/* Summary
Of the nine tests that our code was expected to pass, we passed eight of them.
The only test that we did not pass was the final test, to return the median of an
array of even numbers. */
