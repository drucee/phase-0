
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


// __________________________________________

// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)