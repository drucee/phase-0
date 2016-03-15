# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive integer
# What is the output? (i.e. What should the code return?) a string consisting of an integer separated by commas
# What are the steps needed to solve the problem?
# convert number (integer) to string
# IF number is less than 4 digits return the number
# ELSE: split string of digits into an array of single digits
# reverse the order of single digits in the array
# split the array of digits into an array of chunks of 3 digits each
# insert a comma at the end of every 3-digit chunk
# convert the chunks with commas added back into a single array of digits, and then into a string
# remove the first character of the resulting string (the comma that was added to the final chunk)
# reverse the string again


# 1. Initial Solution


def separate_comma(number)
    if number.to_s.size < 4
        return number.to_s
    else
        digits_array = number.to_s.split("").reverse
        new_array = digits_array.each_slice(3).to_a
        new_array.each do |slice|
            slice.insert(-1, ",")
        end
        number_string = new_array.flatten.join
        number_string.chop.reverse
    end
end

# 2. Refactored Solution

=begin
def separate_comma(number)
	if number.to_s.size < 4
		return number.to_s
	else
		digits_array = number.to_s.split("").reverse.each_slice(3).to_a
		digits_array.each do |slice|
			slice.insert(-1, ",")
		end
		digits_array.flatten.join.chop.reverse
	end
end
=end


# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?
I stepped away from the computer and wrote out the problem with pen and paper in order to break it down.
I knew that I would have to reverse the digits in order to figure out where to place the commas so my first
goal was to determine how to do that. Next, I had to figure out what data type I would be working with and think 
about what methods I knew how to do with that data type.

Was your pseudocode effective in helping you build a successful initial solution?
Yes, as it became apparent to me as I was writing the pseudocode what data structures I would be working with. The most
difficult part was figuring out when to remove the comma that was appearing before the first number in the final string without
removing any digits instead.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
In first doing some research on all the ways of slicing up an array I discovered the #each_slice enumerable that basically
made this problem solvable for me. When I was refactoring I found that I could chain a lot of my methods together
in order to avoid having to use a bunch of new variables.

How did you initially iterate through the data structure?
I iterated through the data structure with a .each on every sub-array.

Do you feel your refactored solution is more readable than your initial solution? Why?
I feel like my refactored solution is more readable because I use fewer variables and fewer lines of code
and I was able to chain a lot of methods together.

=end