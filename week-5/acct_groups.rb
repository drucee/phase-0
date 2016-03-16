# 0. Pseudocode

# What is the input? strings containing people's names
# What is the output? (i.e. What should the code return?) an array of arrays of strings
# What are the steps needed to solve the problem?
# Input array of names (strings)
# Randomize the order of strings in the array
# Divide that array into multiple arrays of 5 people
# UNLESS doing so leaves fewer than 3 people in the list, then:
# Divide the array into multiple arrays of 4 people
# UNLESS doing so leaves fewer than 3 people in the list, then:
# Divide the array into multiple groups of 3 people
# UNLESS doing so leaves fewer than 3 people in the list, then:
# Add the remaining 1 or 2 people to one of the other groups
# Print the final array containing groups to the console

# Solution

def acct_groups(list)
	def acct_groups(list)
	randomized_list = list.shuffle
	groups_list = []
	return list if list.length <= 5
	while randomized_list.length % 5 >= 3 || randomized_list.length % 5 == 0
		groups_list << randomized_list.slice!(0..4)
		break if randomized_list.length < 5
	end
	while randomized_list.length % 4 >= 3 || randomized_list.length % 4 == 0
		groups_list << randomized_list.slice!(0..3)
		break if randomized_list.length < 4
	end
	while randomized_list.length > 0
		groups_list << randomized_list.slice!(0..2)
	end
	p groups_list
end

# Reflection
=begin

What was the most interesting and most difficult part of this challenge?
The most interesting part of this challenge for me was learning new Ruby methods,
like #shuffle, which may prove to be useful in the future for randomizing the order of
items in a list. The most difficult part for me, which I could not complete, was
figuring out what to do if there was a remainder group of 1 or 2 people. As you can see
in my pseudocode I wanted to add those people to another group of three, but I could
not find a suitable array method to do so.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
I feel like my pseudocode is getting better as I begin to understand all of the different
things that Ruby can do. It's becoming clearer to me what intermediate steps I need to solve a problem
when given only the expected input and output.

Was your approach for automating this task a good solution? What could have made it even better?
I thought that the slice! method for cutting up the shuffled list was a good solution, especially
because it was a destructive method. Here there was no need to keep the randomized list populated after
using it to populate the groups.

What data structure did you decide to store the accountability groups in and why?
I decided to store the accountability groups in an array containing sub-arrays, so that both the groups
and the people within those groups could be indexed.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I learned about the #shuffle method, which was quite useful for randomization! Initially I could not figure out
how to cut up the list of names and have it do so randomly each time.

=end