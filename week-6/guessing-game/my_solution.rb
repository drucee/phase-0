
# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an answer integer and guesses (user input) towards the answer
# Output: indication as to whether guesses are high or low, or exactly the answer
# Steps: define a method to initialize the answer
# define a method to take integer guesses and compare them to the answer
# define a method that will indicate whether the guess is correct, and then ends the game


# Initial Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  
  def guess(guess)
      @guess = guess
    if @guess > @answer
        puts :high
    end
    if @guess < @answer
        puts :low
    end
    if @guess == @answer
        puts :correct
    end
  end
  
  def solved?
      if @guess == :correct
          return True
      end
      if @guess != :correct
          return False
      end
  end
end

# Refactored Solution

# Reflection
=begin 

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance variables are similar to properties of any real-world object in that all objects of that type will have these properties.
For example, any object called "clock" should be able to tell the time, so if you were to define an object of class Clock,
it might be initialized with the instance variable @time. Similarly, methods are the same across objects of the same class, just
like the things that one can do with a real-world object of some type will always be the same for any object of that type. Just as for
any "lamp" object you can turn it on and off, if you define a Ruby class called Lamp, and define a method called #turn_on within that 
class, that method will be available to any object in the Lamp class.

When should you use instance variables? What do they do for you?
You should use instance variables when you want variables to be available across all objects of a certain class. Unlike
local variables, they can be shared across methods.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Flow control sets up conditions for a specific block of code to run, and stops running that code once those conditions are
no longer met or there is a line that breaks the flow. It was fairly easy to use for this challenge.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
This code requires symbols because once a symbol is created, it stays in the computer's memory, whereas strings
are created and recreated each time you run the program. You could run this program over and over
and it will always access the same symbols, whereas if you used strings you would create new strings every time you
ran the program, and you would leave a lot of useless object_ids in the symbol table.


=end