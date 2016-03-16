# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: a new die with some number of sides
# Output: a number representing a random roll of that die
# Steps: create a Die object in the Die class with a given number of sides
# IF the number of sides is less than 1, raise an ArgumentError
# create a method that operates on Die objects to roll the die and produce a random number between 1 and the number of sides


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
    	raise ArgumentError.new("Die must have at least 1 side")
    end
  end

  def sides
    sides = @sides
  end

  def roll
    rand(@sides) + 1
  end
end



# 3. Refactored Solution







# 4. Reflection
=begin

What is an ArgumentError and why would you use one?
An ArgumentError is an error that is produced when you pass in an incorrect or unusable value as an argument for a method.
You can use one to prevent users from entering input that the method cannot work with.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I implemented two new Ruby methods: #raise ArgumentError and #rand. They were both simple to implement.

What is a Ruby class?
A class is an overarching collection of method definitions that can be used for instances of that particular class.

Why would you use a Ruby class?
You use a Ruby class to create specific types of objects and methods that are not already available to you.

What is the difference between a local variable and an instance variable?
Local variables only exist inside of the method where they were created, while instance variables are bound to the entire
object where they were created, and can be used in any method called on that object.

Where can an instance variable be used?
Instance variables can be used in any method called on the object in which they were created.
=end