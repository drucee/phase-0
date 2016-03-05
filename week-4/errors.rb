# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#  end
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# Syntax error
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter says it expected an "end" keyword and did not receive one.
# 5. Where is the error in the code?
#The error is after the "while" statement but before the end of the method definition.
# 6. Why did the interpreter give you this error?
# In Ruby, if/else and while loops require an end keyword of their own, even when they are contained in a method that has its own end keyword.

# --- error -------------------------------------------------------

#south_park = '80721'

# 1. What is the line number where the error occurs?
# The error occurs in line 36.
# 2. What is the type of error message?
# Name error
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter does not recognize the object "south_park" as either a local variable or a method.
# 4. Where is the error in the code?
#The error is in the name of the object (NameError)
# 5. Why did the interpreter give you this error?
# The object "south_park" cannot be properly interpreted as either a local variable, a keyword, or a method call. It needs to be defined as one of those things; as a local variable with the thing it contains to the right of an equl sign, as a method defined previously starting with the keyword def, or as a keyword already known to Ruby.

# --- error -------------------------------------------------------

#def cartman()
#	puts "Yeah I want Cheesy Poofs!"
#end

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# No method error in <main>
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter does not recognize "cartman" as a previously defined method.
# 4. Where is the error in the code?
# The error is in the name of the object.
# 5. Why did the interpreter give you this error?
# The interpreter is attempting to call the method "cartman" but the method has not been previously defined with the def keyword.

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end
#
#cartmans_phrase

# 1. What is the line number where the error occurs?
# 68
# 2. What is the type of error message?
# Argument error in <main>
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter received one argument when the method was called rather than the expected zero.
# 4. Where is the error in the code?
# The error occurs within the parentheses when the method is called.
# 5. Why did the interpreter give you this error?
# The method "cartmans_phrase" was called with one argument; however, the method was defined to take no arguments. The method should be called with no arguments instead

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says("Kyle's mom is a bitch")

# 1. What is the line number where the error occurs?
# 87
# 2. What is the type of error message?
# Argument error in <main>
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter received no arguments for a method that is supposed to accept one argument.
# 4. Where is the error in the code?
# The error occurs on line 91 when the method "cartman_says" is called without any arguments.
# 5. Why did the interpreter give you this error?
# This method is supposed to take one argument, "offensive_message." When a method is called in Ruby with an argument, you have to supply the correct number of arguments. Here, no arguments were supplied.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end
#
#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Butters')

# 1. What is the line number where the error occurs?
# 108
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter found the wrong number of arguments (one where two were expected)
# 4. Where is the error in the code?
#The error occurs in line 112 where the method is called with one argument instead of two.
# 5. Why did the interpreter give you this error?
#Ruby methods require the correct number of arguments to be supplied when called. Here, we were supposed to supply a value for both "lie" and "name", but there is only a value for "lie" supplied.

# --- error -------------------------------------------------------

#"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 127
# 2. What is the type of error message?
# Type error
# 3. What additional information does the interpreter provide about this type of error?
# A string can't be multiplied into an integer as displayed.
# 4. Where is the error in the code?
# The error occurs after the * expression.
# 5. Why did the interpreter give you this error?
# When multiplying a string by an integer in Ruby, the string needs to be on the left side of the arithmetic expression, i.e. you can multiply "Respect my authoritay!" 5 times (print out 5 sets of "Respect my authoritay!") but you can't do the reverse (print out "Respect my authoritay!" sets of 5).

# --- error -------------------------------------------------------

#amount_of_kfc_left = 0/20


# 1. What is the line number where the error occurs?
#142
# 2. What is the type of error message?
# Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
#  Division by 0 has occurred. This is not allowed in Ruby.
# 4. Where is the error in the code?
# The error occurs after the division expression "/".
# 5. Why did the interpreter give you this error?
# Division by zero is not allowed in Ruby.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#158
# 2. What is the type of error message?
#Load Error
# 3. What additional information does the interpreter provide about this type of error?
# Ruby is attempting to load the file "cartmans_essay.md" and cannot because no such file exists.
# 4. Where is the error in the code?
# The error occurs after the method "require_relative".
# 5. Why did the interpreter give you this error?
# In order for require_relative to work, you must specify the relative path of a file that actually exists. If no such file exists, this error will be produced.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# The TypeError was the most difficult to read because, even though I had an abstract understanding of why the error occurred, it was difficult to figure out exactly what "string can't be coerced into Fixnum" means because we haven't really encountered the concept of "coercion" in Ruby yet.
# I figured out what the issue with the error was by consulting my resources in "Learn to Program" and "The Well-Grounded Rubyist" about proper syntax and formatting of code.
# When I encounter errors in my future code, I will undertake a process similar to the one I did in this exercise: find the error message, determine what line it is occurring on, consult resources to figure out why the error occurred, and then refactor based on those resources.