# Pad an Array

# I worked on this challenge with: Gabriel Zurita

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? an array, minimum size, a default value
# What is the output? an array
# What are the steps needed to solve the problem?
# IF size of array < minimum size, return new array padded with default value
# up to minimum size


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  difference = min_size - array.length
  new_array = Array.new(difference, value)
  padded_array = array.push(new_array)
  array = padded_array.flatten!
  p array
end


def pad(array, min_size, value = nil) #non-destructive
  difference = min_size - array.length
  new_array = Array.new(difference, value)
  padded_array = array.concat(new_array)
  p padded_array
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  array.fill(value, array.length...min_size)
  p array
end

def pad(array, min_size, value = nil)
  new_array = array.dup.fill(value, array.length...min_size)
  p new_array
end


# 4. Reflection

=begin
Were you successful in breaking the problem down into small steps?
We were successful in breaking down the problem into small steps;
however, I don't think we made our pseudocode thorough enough (or
included enough intermediate steps) to avoid confusion as we worked
through the challenge. "Where to begin" is always the hardest part
for me, and I think it was that way for my pair as well.

Once you had written your pseudocode, were you able to easily translate
it into code? What difficulties and successes did you have?
We were able to translate our pseudocode into a vague outline of what we
needed to do while coding; we had difficulty figuring out exactly where to
  start and got bogged down with intermediate steps by making them more
  complex than they needed to be.

Was your initial solution successful at passing the tests? If so, why do
  you think that is? If not, what were the errors you encountered and what
  did you do to resolve them?
    Our initial solution did not work as desired because it kept returning
    a multidimensional array containing the original array and a sub-array
    containing default values up to the minimum size. We had to do a lot of
      research in the Ruby Docs to find an enumerable that would enable us
      to turn the multidimensional array into a one-dimensional array (after
      a time-consuming and ill-advised experiment with iteration).

When you refactored, did you find any existing methods in Ruby to clean up your code?
When we refactored we were able to find the #fill! and #fill methods that provide
a one-line solution to the problem.

How readable is your solution? Did you and your pair choose descriptive variable names?
Our solution seems to be readable with descriptive variable names such as
"difference" for the difference between the minimum size and the length of the
argument array, and "padded_array" for the output array.

What is the difference between destructive and non-destructive methods in your own words?
Destructive methods change the object that they're called on; non-destructive
methods do not. If we had a fictitious non-destructive method, #double, that
  doubled the numbers in the array [2, 4] set equal to my_array, calling my_array.double
  would return [4, 8] but my_array would still be equal to [2, 4]. A destructive version
  of that method, #double! would do the same thing, except my_array would now
  be equal to [4, 8].

