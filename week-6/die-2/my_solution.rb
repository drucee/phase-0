# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: a new die with some number of sides, on which are arbitrary symbols
# Output: a string representing a random roll of that die
# Steps: create a new object in the Die class with a given number of sides
# apply arbitrary symbols to those sides
# if the number of sides is less than 1, raise an ArgumentError
# create a method that operates on Die objects to roll the die and produce one of the random symbols located on it


# Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  	if labels.length < 1
  		raise ArgumentError.new("Die must have at least 1 symbol")
  	end
  end

  def sides
  	sides = @labels.length
  end

  def roll
  	@labels.sample
  end
end



# Refactored Solution

#I did not need to refactor this code as it is already quite basic. 






# Reflection
=begin

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
I didn't really need to change much to get this die class to work. The logic was exactly the same, except with an array in place of integers.

What does this exercise teach you about making code that is easily changeable or modifiable? 
This exercise taught me that code needs to be written in a form where one can easily see
the logic that was used and the steps that were taken so that one could modify it step by step without
having to make too many other changes.

What new methods did you learn when working on this challenge, if any?
When I figured out that #rand only works on integers, I had to research a new
method in order to pull a single random string from the array. I found a method called #sample
that does just that.

What concepts about classes were you able to solidify in this challenge?
This challenge solidified the concepts of instance variables and class syntax for me.
=end