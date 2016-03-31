# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# raise an error message unless the indicated block of code evaluates to True
# in line 13 the assertion evaluates to True so the value "bettysue" is returned
# in line 14 the assertion does not evaluate to True so the error message is raised

# 3. Copy your selected challenge here
#4.6 Largest Integer challenge

def largest_integer(list_of_nums)
	return nil if list_of_nums == []
	largest = list_of_nums[0]
	for num in list_of_nums
		if num > largest
			largest = num
		end
	end
	return largest
end

largest_integer([1,7,29,-5])


# 4. Convert your driver test code from that challenge into Assert Statements

def assert
	raise "Assertion failed!" unless yield
end

assert { largest_integer([1,7,29,-5]) == 29 }
assert { largest_integer([1,7,29,-5]) == -5 }


# 5. Reflection
=begin

What concepts did you review or learn in this challenge?
In this challenge I learned how to write tests for Ruby methods. To do this
you write an assert statement that contains the driver code, i.e. the method
call, and its expected result.

What is still confusing to you about Ruby?
I am still finding the plethora of flow control methods in Ruby to be highly confusing.
Often when I write code I resort to if/else statements when I could be cutting
the bulk of my code down significantly by using any of Ruby's plethora of flow control
and iteration methods.

What are you going to study to get more prepared for Phase 1?
I am going to review iteration and flow control in Ruby, as well as JavaScript syntax. Those are
likely my biggest weak points so far.

=end